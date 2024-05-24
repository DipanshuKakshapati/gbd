# Tuple

## tuple is a collection which is ordered and unchangeable.
## Tuples are written with round brackets.

### Unchangeable (Immutable)
Unlike lists, tuples are immutable. Once a tuple is created, you cannot change its contents — no new elements can be added, and existing elements cannot be removed or altered. This immutability has several implications:

#### Safety: 
Tuples provide a way of ensuring that data remains constant throughout the execution of a program. This can be particularly useful when you need to pass a sequence of values around your program and be sure that it does not get altered inadvertently.

#### Performance: 
Immutable data structures are generally simpler and can be optimized better by the Python interpreter. For example, because tuples are immutable, they can be hashed (using the hash() function), which allows them to be used as keys in dictionaries or stored in sets, both of which are not possible with lists.

#### Memory Efficiency: 
Since Python knows that the tuple will not change, it can optimize memory allocation and handling. This can lead to a more efficient use of resources when dealing with large amounts of data.

### Do not forget the comma.
thistuple = ("apple",)
print(type(thistuple))

### You can also define a tuple without parentheses by just separating the items with commas, although using parentheses improves readability:
another_tuple = 1, 2, 3

### NOT a tuple
thistuple = ("apple")
print(type(thistuple))

### Using the tuple() method to make a tuple:
thistuple = tuple(("apple", "banana", "cherry")) # note the double round-brackets
print(thistuple)
