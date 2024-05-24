def evennum(num): # a function to check if a num is even or not
    for i in num:
        if i % 2 == 0:
            yield i

numbers = [1,2,3,4,5,6,7,8,9,10] # a list of numbers

even_num = evennum(numbers) # calling the function

for i in even_num: # iterating over the list of numbers
    print(f"{i}")