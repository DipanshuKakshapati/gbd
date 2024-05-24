class Primegenerator:
    def __init__(self):
        self.current = 2 # starting with the first prime number
    
    def __iter__(self):
        return self # creating the instance itself as the iterator
    
    def __next__(self):
        while True:
            if self.is_prime(self.current): # checking if the condition is true and a prime number
                prime_num = self.current
                self.current += 1
                return prime_num # returning the prime number 
            self.current += 1

    def is_prime(self, num): # function to check if a num is prime or not
        if num <= 1: # if it is < 1, return false not a prime number
            return False
        for i in range (2, num): # going through the loop from 2 and num
            if num % i == 0: # if num found divisible, return false - not a prime number
                return False
        return True

prime_gen = Primegenerator()

for i in range(10): # generating the first 10 prime numbers
    print(next(prime_gen))