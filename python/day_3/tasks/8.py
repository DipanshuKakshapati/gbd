# importing required libraries
from datetime import datetime

# declaring a sample string
string_date = '2024-03-5 13:07:34'

# defining a date_format
date_format = '%Y-%m-%d %H:%M:%S'

# converting the string to datetime object with the specified dat_format
date_object = datetime.strptime(string_date, date_format)

print(type(date_object))

print(f"Date time object is: {date_object}")
print(f"Year is: {date_object.year}")
print(f"Month is: {date_object.month}")
print(f"Day is: {date_object.day}")
print(f"Hour is: {date_object.hour}")
print(f"Minute is: {date_object.minute}")
print(f"Second is: {date_object.second}")

