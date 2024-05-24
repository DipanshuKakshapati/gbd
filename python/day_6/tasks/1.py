class ComplexNumber:
    def __init__(self, real_num, imag_num): # initialize the compelx number with real and imaginary parts
        self.real_num = real_num
        self.imag_num = imag_num

    def __add__(self, other): # add two complex numbers
        new_real_num = self.real_num + other.real_num
        new_imag_num = other.imag_num + other.imag_num

        return ComplexNumber(new_real_num, new_imag_num)

    def __sub__(self, other): # subtract two complex numbers
        new_real_num = self.real_num - other.real_num
        new_imag_num = other.imag_num - self.imag_num
    
        return ComplexNumber(new_real_num, new_imag_num)
    
    def __str__ (self): # return the string representation of complex number
        if self.imag_num >= 0:
            return f"{self.real_num} + {self.imag_num}i"
        else:
            return f"{self.real_num} - {-self.imag_num}i"

num_1 = ComplexNumber(2, -5) # creating one num_1 object of class ComplexNumber
num_2 = ComplexNumber(3, 8) # creating another num_2 object of class ComplexNumber

print("First complex number: ", num_1)
print("\n")
print("Second complex number: ", num_2)

print("Performing addition")

print("Result: ", num_1 + num_2)
print("\n")

print("Performing subtraction")
print("Result: ", num_1 - num_2)
print("\n")