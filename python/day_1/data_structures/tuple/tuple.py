#Do not forget the comma.
thistuple = ("apple",)
print(type(thistuple))

#NOT a tuple
thistuple = ("apple")
print(type(thistuple))

# Creating a tuple
dimensions = (1920, 1080)

# Accessing elements
print("Width:", dimensions[0])
print("Height:", dimensions[1])

# Trying to change a value (this will raise an error)
# dimensions[0] = 1080  # Uncommenting this line will raise a TypeError

# Tuples can be used as keys in dictionaries
resolution_to_name = {dimensions: "1080p"}
print("Resolution name:", resolution_to_name[dimensions])
