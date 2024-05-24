# first asking user to input a vale and then converting it into the int data type
try:
    input = int(input('Enter an integer number user: '))

# in the case if the input is not an integer number, an error is print.
except ValueError:
    print('Error. Please input a valid integer number')

# if the input is correct, we print the output in needed format.
else:
    print(f"Your input int number in binary would be {bin(input)}")
    print(f"Your input int number in binary would be {oct(input)}")
    print(f"Your input int number in binary would be {hex(input)}")

