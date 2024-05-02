# Set

## A set is a collection which is unordered, unchangeable*, and unindexed.
## Sets cannot have two items with the same value.
## True and 1 is considered the same value:
## False and 0 is considered the same value:

### Simple set
thisset = {"apple", "banana", "cherry"}
print(thisset)

### Simple set with different data types
thisset = {"apple", "banana", "cherry", True, 1, 2}
print(thisset)

### Use set() constructor to make a set:
thisset = set(("apple", "banana", "cherry")) # note the double round-brackets
print(thisset)