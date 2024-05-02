# Creating a set
colors = {"red", "green", "blue"}
print("Original set:", colors)

# Adding an element
colors.add("yellow")
print("After adding yellow:", colors)

# Checking membership
print("Is 'red' in colors?", "red" in colors)

# Set operations
primary_colors = {"red", "blue", "yellow"}
secondary_colors = {"green", "orange", "purple"}
print("Union:", primary_colors.union(secondary_colors))
print("Intersection:", primary_colors.intersection(colors))
print("Difference:", primary_colors.difference(secondary_colors))

