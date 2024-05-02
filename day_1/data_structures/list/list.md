# List

## List items are ordered, changeable, and allow duplicate values.

## List items are indexed, the first item has index [0], the second item has index [1] etc.

## Lists have O(1) time complexity for indexing operations but can have higher costs for operations that involve resizing (like appending elements beyond its current capacity, where it may require a reallocation of the entire array).

## They are mutable.

### List constructor:
thislist = list(("apple", "banana", "cherry"))
print(thislist)

### Normal list:
list1 = ["abc", 34, True, 40, "male"]

### Creating a list
fruits = ["apple", "banana", "cherry"]
print("Original list:", fruits)

### Appending an element
fruits.append("orange")
print("After appending:", fruits)

### Accessing elements
print("First fruit:", fruits[0])

### Slicing a list
print("First two fruits:", fruits[:2])

### sing the list() constructor to make a List:
thislist = list(("apple", "banana", "cherry")) # note the double round-brackets
print(thislist)