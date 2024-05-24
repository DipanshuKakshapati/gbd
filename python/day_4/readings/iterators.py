my_list = [1, 2, 3]

iterator = iter(my_list)  # this uses the list's __iter__() method

print(next(iterator))  # Outputs 1
print(next(iterator))  # Outputs 2
print(next(iterator))  # Outputs 3

# next call would raise StopIteration as there are no more elements
