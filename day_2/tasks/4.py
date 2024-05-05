# list of items with their prices
items = [
    ("Espresso", 2.5),
    ("Latte", 3.5),
    ("Muffin", 2.0),
    ("Croissant", 2.75),
    ("Tea", 1.75)
]

# print the header
print(f"{'Item':<15}{'Price ($)':>10}")

# printing a line below header
print('-' * 26)

# printing each items along with their price in a clean table
for item, price in items:
    print(f"{item:<15}{price:>10.2f}")

