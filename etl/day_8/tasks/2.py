#!/usr/bin/env python
# coding: utf-8

# # importing needed libraries

# In[162]:


import pandas as pd


# ## reading the data

# In[163]:


data = pd.read_csv('product.csv')


# In[164]:


data.head(10)


# In[165]:


data.info()


# # data cleaning

# In[166]:


data.isnull().sum()


# ## dropping null values

# In[167]:


cleaned_data = data.dropna(axis = 'columns')


# In[168]:


cleaned_data


# In[169]:


cleaned_data.isna().sum()


# In[170]:


cleaned_data['is_in_stock'].value_counts(0)


# In[171]:


cleaned_data.loc[:, 'is_in_stock'] = cleaned_data['is_in_stock'].replace({0:'No', 1:'Yes'})


# In[172]:


cleaned_data.info()


# In[173]:


cleaned_data.describe()


# # Database Connection

# In[174]:


import pyodbc


# ## setting up connection to MySQL

# server = 'localhost'  
# database = 'master' 
# username = 'sa'  
# password = 'Ocacine10#'  

# In[176]:


pyodbc.drivers()


# In[177]:


cnxn = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};'
                      f'SERVER={server};'
                      f'DATABASE={database};'
                      f'UID={username};'
                      f'PWD={password}')

cursor = cnxn.cursor()


# # No duplicate 'sku'

# ## creating a products_without_duplicate table

# In[178]:


cursor.execute('''
CREATE TABLE products_without_duplicate (
    sku VARCHAR(255), 
    name VARCHAR(255), 
    price INTEGER, 
    qty REAL,
    out_of_stock_qty REAL,
    is_in_stock VARCHAR(30), 

    PRIMARY KEY(sku)
)
''')


# ## inserting cleaned data to the created table in MYSQL

# In[179]:


data_to_insert = cleaned_data.copy() 

for _, row in data_to_insert.iterrows():
    insert_query = '''
    IF NOT EXISTS (SELECT 1 FROM products_without_duplicate WHERE sku = ?)
        INSERT INTO products_without_duplicate (sku, name, price, qty, out_of_stock_qty, is_in_stock)
        VALUES (?, ?, ?, ?, ?, ?)
    '''
    params = (row['sku'], row['sku'], row['name'], int(row['price']), float(row['qty']), float(row['out_of_stock_qty']), row['is_in_stock'])
    cursor.execute(insert_query, params)

cnxn.commit()


# ## query to get products that are out of stock

# In[180]:


cursor.execute('''
SELECT name, qty, is_in_stock
FROM products_without_duplicate
WHERE is_in_stock = 'No';
''')


# In[181]:


records_1 = cursor.fetchall()


# In[182]:


count = 0
for record in records_1:
    print(record)
    count += 1;

print(f"\nNumber of products that are not in stock: {count}")


# In[183]:


len(records_1)


# In[184]:


type(records_1)


# In[185]:


type(records_1[0])


# ## converting fetched data that is in pyodbc.Row format into tuples

# In[186]:


records_as_tuples = [tuple(row) for row in records_1]


# In[187]:


type(records_as_tuples)


# In[188]:


type(records_as_tuples[0])


# ## converting the fetched data into a dataframe

# In[189]:


df = pd.DataFrame(records_as_tuples, columns=['name', 'qty', 'is_in_stock'])
df


# # Duplicate 'sku'

# ## creating a products_with_duplicate table

# In[190]:


cursor.execute('''
CREATE TABLE products_with_duplicate (
    sku VARCHAR(255), 
    name VARCHAR(255), 
    price INTEGER, 
    qty REAL,
    out_of_stock_qty REAL,
    is_in_stock VARCHAR(30), 
)
''')


# ## inserting cleaned data to the created table in MYSQL

# In[191]:


data_to_insert = cleaned_data.copy()

for _, row in data_to_insert.iterrows():
    insert_query = '''
    INSERT INTO products_with_duplicate (sku, name, price, qty, out_of_stock_qty, is_in_stock)
    VALUES (?, ?, ?, ?, ?, ?)
    '''
    params = (row['sku'], row['name'], int(row['price']), float(row['qty']), float(row['out_of_stock_qty']), row['is_in_stock'])
    cursor.execute(insert_query, params)

cnxn.commit()


# ## query to get products that have duplicate sku

# In[192]:


cursor.execute('''
SELECT sku, COUNT(*)
FROM products_with_duplicate
GROUP BY sku
HAVING COUNT(*) > 1;
''')


# In[193]:


records = cursor.fetchall()


# In[194]:


count = 0
for record in records:
    print(record)
    count += 1;

print(f"\nTotal duplicate rows: {count}")


# In[195]:


type(records)


# In[196]:


type(records[0])


# ## converting fetched data that is in pyodbc.Row format into tuples

# In[197]:


records_as_tuples = [tuple(row) for row in records]


# In[198]:


type(records_as_tuples)


# In[199]:


type(records_as_tuples[0])


# ## converting the fetched data into a dataframe

# In[200]:


df = pd.DataFrame(records_as_tuples, columns = ['sku','count'])
df


# In[201]:


cursor.close()
cnxn.close()

