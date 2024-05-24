# String data

# importing needed libraries
import io

# a sample data
data = "Today is 9th March."

# initializing StringIO object with a string
data_looklike_file = io.StringIO(data)

print(data_looklike_file.read())

# a new addition sample data
add_data = " Tomorrow is 10th March."

# adding the sample data to the existing StringIO object
data_looklike_file.write(add_data)

# taking the cursor to the beginning
data_looklike_file.seek(0)

# checking the new added content
print(data_looklike_file.read())


# Binary data

# importing needed libraries
import io

# a sample data
data = b"Today is 9th March."

# initializing StringIO object with a string
data_looklike_file = io.BytesIO(data)

print(data_looklike_file.read())

# a new addition sample data
add_data = b" Tomorrow is 10th March."

# adding the sample data to the existing StringIO object
data_looklike_file.write(add_data)

# taking the cursor to the beginning
data_looklike_file.seek(0)

# checking the new added content
print(data_looklike_file.read())