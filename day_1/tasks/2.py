# function to convert roman values into integers
def roman_to_integer(roman_value):
    
    #defining a dictionary with the key values of roman characters used to define numeric representation
    roman_values = {'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000}
    total_value = 0 # initializing the toal_value variable 0
    previous_value = 0 # initializing the previous_value variable 0

    # a for loop to go over every roman characters given to the roman_to_integer function and then replace with it's integer value
    for i in reversed (roman_value): # we are reversing the roman_value here so that it is easier to handle
        num_value = roman_values[i] # taking the single characters from the given roman word

        if num_value >= previous_value: # chekcing the condition if the num_value is greater than or equal to the previous_value
            total_value = total_value + num_value # adding the num_value with total_value if condition is met
        else:
            total_value = total_value - num_value # subtracting the num_value with total_value

        previous_value = num_value # updating the previous value with the current num_value

    return total_value

print(roman_to_integer("IX"))  # Output should be 9
print(roman_to_integer("LVIII"))  # Output should be 58
print(roman_to_integer("MCMXCIV"))  # Output should be 1994
