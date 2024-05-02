# Tuple

## tuple is a collection which is ordered and unchangeable.
## Tuples are written with round brackets.

### Do not forget the comma.
thistuple = ("apple",)
print(type(thistuple))

### NOT a tuple
thistuple = ("apple")
print(type(thistuple))

### Using the tuple() method to make a tuple:
thistuple = tuple(("apple", "banana", "cherry")) # note the double round-brackets
print(thistuple)
