# Implement a class Employee that uses private attributes to store personal information and provides public methods to access this information.
class Employee:

    def __init__ (self, name, address, role, gender):
        self.name = name # assigning name to be a public attribute
        self.__address = address # assigning address to be a private attribute
        self.__gender = gender # assigning gender to be a private attribute
        self.__role = role # assigning role to be a private attribute

    def address(self):
        return self.__address 
    
    def gender(self):
        return self.__gender
    
    def role(self):
        return self.__role

# creating an instance of employee
Emp_1 = Employee('Moo', 'Nepal', 'Marketer', 'Male')
print(f"Name: {Emp_1.name}") # accessing the public attribute directly
print(f"Address: {Emp_1.address()}") # accessing the private attribute via a public method
print(f"Gender: {Emp_1.gender()}") # accessing the private attribute via a public method
print(f"Role: {Emp_1.role()}") # accessing the private attribute via a public method


# Use an instance of the 'FibonacciCheck' class to test whether or not a number belongs to the finbonacci series using static method.

class FibonacciCheck:
    
    @staticmethod
    def isfibonacci(num): # afunction to check fibonacci number
        if num < 0:
            return False
        
        x, y = 0, 1

        while y < num:
            x, y = y, x + y

        return y == num or num==0

num = int(input("Enter a num: "))
print(f"Is your input number a fibonacci: {FibonacciCheck.isfibonacci(num)}") # in static method we do not need to create an instance of the class
