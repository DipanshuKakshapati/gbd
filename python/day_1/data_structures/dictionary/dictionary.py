# Creating a dictionary
person = {"name": "Alice", "age": 25, "city": "New York"}
print("Original dictionary:", person)

# Setting values
person["age"] = 26  # Changing an existing key
person["profession"] = "Engineer"  # Adding a new key-value pair
print("After updates:", person)

# Getting values
print("Name:", person["name"])

# Iterating through keys and values
for key, value in person.items():
    print(f"{key}: {value}")
