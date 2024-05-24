# example iterable which is a list
numbers = [1, 2, 3, 4, 5]

# converting the numbers list to an iterator
iterator = iter(numbers)

# process items using next()
try:
    while True:
        number = next(iterator)
        print(f"Processing number: {number}")
except StopIteration:
    print("Iteration complete!")