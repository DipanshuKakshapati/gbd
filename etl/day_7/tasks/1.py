#!/usr/bin/env python
# coding: utf-8

# # importing neeeded libraries

# In[1]:


import pandas as pd
import matplotlib.pyplot as plt


# # reading the data

# In[2]:


data = pd.read_csv('GDP.csv')

data.head(5)


# # data cleaning

# In[3]:


data.iloc[3]


# In[4]:


new_columns = data.iloc[3]


# In[5]:


data.columns = new_columns


# In[6]:


data = data.drop(data.index[0:4])

data.reset_index(drop=True, inplace=True)


# In[7]:


data.head(5)


# # dropping columns 

# In[8]:


cleaned_data = data.dropna(axis='columns', how ='all')
cleaned_data.head(5)


# In[9]:


nepal_data = cleaned_data[cleaned_data['Country Name'] == 'Nepal']


# In[10]:


nepal_data


# In[11]:


import pandas as pd

nepal_long = pd.melt(nepal_data, id_vars=['Country Name', 'Country Code', 'Indicator Name', 'Indicator Code'],
                     var_name='Year', value_name='GDP')

nepal_long.head(4)


# In[12]:


nepal_long.dtypes


# In[13]:


nepal_long['Year'] = nepal_long['Year'].astype(int)


# In[14]:


nepal_long.dtypes


# In[15]:


nepal_long.head(3)


# In[16]:


nepal_long['GDP'] = nepal_long['GDP'].astype(float)


# In[17]:


nepal_long.dtypes


# In[18]:


nepal_long.head(3)


# In[19]:


nepal_long.rename(columns={'GDP': 'GDP in Billion US $'}, inplace=True)


# In[20]:


nepal_long['GDP in Billion US $'] = nepal_long['GDP in Billion US $'] / 1e9


# In[21]:


nepal_long.tail(3)


# In[22]:


nepal_long.describe()


# # visualizing gdp trend of Nepal

# In[23]:


plt.figure(figsize=(20, 10))
plt.plot(nepal_long['Year'], nepal_long['GDP in Billion US $'], marker='o') 
plt.title('GDP Over Years for Nepal')
plt.xlabel('Year')
plt.ylabel('GDP (current US$ in Billion)')

start_year = nepal_long['Year'].min()
end_year = nepal_long['Year'].max()
ticks = range(start_year, end_year + 1, 3)

plt.xticks(ticks)
plt.yticks()

plt.grid(True)
plt.show()


# # Database connection

# In[24]:


import pyodbc


# ## setting up connection to MySQL

# In[25]:


server = 'localhost'  
database = 'master' 
username = 'sa'  
password = 'Ocacine10#'  


# In[26]:


pyodbc.drivers()


# In[27]:


cnxn = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};'
                      f'SERVER={server};'
                      f'DATABASE={database};'
                      f'UID={username};'
                      f'PWD={password}')

cursor = cnxn.cursor()


# ## creating a gdp_data table

# In[29]:


create_table_query = '''
CREATE TABLE gdp_data (
    country_name TEXT,
    country_code TEXT,
    indicator_name TEXT,
    indicator_code TEXT,
    year INTEGER,
    gdp REAL,
    PRIMARY KEY (country_name, year)
);
'''
cursor.execute(create_table_query)


# ## inserting cleaned data to the created table in MYSQL

# In[ ]:


data_to_insert = nepal_long.copy() 

for _, row in data_to_insert.iterrows():
    insert_query = '''
    INSERT INTO gdp_data (country_name, country_code, indicator_name, indicator_code, year, gdp)
    VALUES (?, ?, ?, ?, ?, ?)
    '''
    params = (row['Country Name'], row['Country Code'], row['Indicator Name'], row['Indicator Code'], int(row['Year']), float(row['GDP in Billion US $']))
    cursor.execute(insert_query, params)

cnxn.commit()


# ## one example query to test our connection with the database

# In[ ]:


cursor.execute('''
SELECT *,
FROM gdp_data
WHERE year > 2010 AND gdp > 30;
''')


# In[ ]:


records = cursor.fetchall()


# In[ ]:


count = 0
for record in records:
    print(record)
    count += 1;

print(f"\nTotal number of instances where GDP of Nepal is > 30 after the 2010 year: {count}")


# ## closing connection with the database

# In[ ]:


cursor.close()
cnxn.close()

