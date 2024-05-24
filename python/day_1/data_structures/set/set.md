# Set

## A set is a collection which is unordered, unchangeable*, and unindexed.
## Sets cannot have two items with the same value.
## True and 1 is considered the same value:
## False and 0 is considered the same value:

### Unordered:
Sets in Python do not maintain any order for the stored elements. This characteristic stems from sets being implemented as hash tables. When an element is added to a set, it is placed in a position determined by a hash function, which depends on the element's hash value. The order of elements can seem arbitrary and can even change when other elements are added or removed.
The lack of order helps optimize set operations like checking for membership (in), which can be performed in average O(1) time. The order of elements is irrelevant for the primary use cases of sets, such as membership testing, eliminating duplicates, and performing mathematical operations like unions, intersections, and differences.

### Unchangeable (Immutable Elements):
While you can add or remove items from a set, the individual elements themselves must be immutable (unchangeable). This is because mutable elements could change their hash value, which would violate the integrity of the set's underlying hash table implementation.
Only immutable data types (like numbers, strings, and tuples) can be added to a set. Mutable data types (like lists, dictionaries, or other sets) cannot be added because their inclusion could lead to unstable set behavior due to changes in their hashable identity.

### Unindexed:
Sets do not support indexing or slicing. The elements in a set do not have a defined index because sets are not ordered. Trying to access elements by an index or slice, like you would with a list, will result in a TypeError.
The absence of indexing is aligned with the set's primary purpose: to provide efficient membership testing, not to maintain sequence or order. The unindexed nature of sets reflects their typical use as a collection for ensuring uniqueness and performing set-specific operations without concern for element sequence.

### Hash Tables
A hash table is a data structure that offers very fast performance for common operations such as adding a new element, deleting an element, or checking whether an element is in the set. The core of how a hash table works involves a function known as a "hash function".

### Hash Function
Purpose: The hash function takes an input (an element of the set) and returns a hash value, which is typically an integer. This hash value determines where in the hash table an element is stored. The better the hash function at distributing elements uniformly across the hash table, the better the performance of the hash table in terms of speed and memory usage.
Properties: A good hash function for a hash table has two main properties: it should be fast to compute, and it should minimize collisions (situations where two different elements produce the same hash value).

### Simple set
thisset = {"apple", "banana", "cherry"}
print(thisset)

### Simple set with different data types
thisset = {"apple", "banana", "cherry", True, 1, 2}
print(thisset)

### Use set() constructor to make a set:
thisset = set(("apple", "banana", "cherry")) # note the double round-brackets
print(thisset)