# importing needed libraries
import random 

random.seed(365) # initializing a random seed number 

random_int = random.randint(1,100) # generating random int number between 1 and 100
print(f"Random int number between 1 and 100: {random_int}")

random_float = random.uniform(1.2, 5.4) # generating random float number between 1.2 and 5.4
print(f"Random float number between 0 and 1: {random_float}")

fruit_list = ['apple', 'banana', 'mango', 'orange'] # defining a list for fruits
print(f"Original fruit list: {fruit_list}")

random.shuffle(fruit_list) # randomly shuffling the fruit_list
print(f"Randomized fruit list: {fruit_list}")

random_fruit = random.choice(fruit_list) # randomly picking up a fruit from the list
print(f"Random fruit choice: {random_fruit}")

random_sample_fruit = random.sample(fruit_list, 2) # randomly picking out 2 sample fruits from the list
print(f"Random 2 fruit sample from fruit list: {random_sample_fruit}")

