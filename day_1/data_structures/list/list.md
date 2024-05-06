# List

## List items are ordered, changeable, and allow duplicate values.

## List items are indexed, the first item has index [0], the second item has index [1] etc.

## Lists have O(1) time complexity for indexing operations but can have higher costs for operations that involve resizing (like appending elements beyond its current capacity, where it may require a reallocation of the entire array).

### Ordered: 
Lists in Python maintain the order of elements as they were added. When you add items to a list, they retain their positioning unless explicitly moved or removed. This ordering is crucial because it allows you to retrieve items based on their position. For example, list[0] will always return the first item, list[1] the second, and so on. This makes lists suitable for applications where the sequence of items matters, such as maintaining a specific order of operations or storing data that needs to be retrieved in a specific sequence.

### Changeable (Mutable): 
Lists are mutable, meaning their contents can be changed after they are created. You can modify lists by adding new items, removing existing ones, or changing the value of elements. This can be done using methods like append(), remove(), insert(), or by direct item assignment (e.g., list[0] = 'new value'). This mutability makes lists very useful for tasks where you need to dynamically alter data, such as collecting user inputs, processing data in stages, or simply when the number of elements can vary over time.

### Allow Duplicates: 
Lists allow you to store duplicate values. They do not impose any restrictions on the uniqueness of the elements. This is particularly useful when the frequency of occurrence of each item is important information, such as in statistical computations, or when simply collecting or grouping similar items without enforcing uniqueness. For example, you might have a list of temperatures recorded every hour, where the same temperature can be recorded multiple times.

### O(1) Time Complexity for Indexing
When you index a list (e.g., list[index]), Python directly accesses the memory location at that index. Since lists are implemented as arrays in memory, each element in the list is stored in a contiguous block of memory. Knowing the index and the base address of the array, Python can compute the address of any element using an arithmetic operation, which is very fast and independent of the size of the list. This is why indexing has a time complexity of O(1).

### Costs of Resizing
When appending an element to a list, there are two scenarios to consider:

There is sufficient capacity in the underlying array: In this case, the element can be added directly without moving any existing elements. This operation is generally O(1), also called amortized O(1), meaning it is constant time for most of the append operations.
The underlying array is full: If the array has no space left to accommodate new elements, Python needs to allocate a new, larger array and then copy all the elements from the old array to the new one. This reallocation and copying process has a time complexity of O(n), where n is the number of elements in the list. The new array typically has a larger capacity than the old one (commonly increasing by a factor, such as doubling the size), to ensure that subsequent appends will not require immediate resizing.

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