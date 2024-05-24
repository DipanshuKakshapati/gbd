class SquareIterator:
    def __init__(self, numbers):
        self.numbers = numbers  # the list of numbers to iterate over
        self.index = 0  # the starting index
    
    def __iter__(self):
        return self  # returning the iterator object itself
    
    def __next__(self):  
        if self.index < len(self.numbers):  # checking if there are more numbers to process
            num_squared = self.numbers[self.index] ** 2  # squaring the number at the current index
            self.index += 1  # incrementing the index to move to the next item
            return num_squared
        else:
            raise StopIteration  # when there are no more elements, stop the iteration

numbers = [3, 4, 5, 6, 7, 8, 9]  # list of numbers
squared_numbers = SquareIterator(numbers)  # creating an instance of SquareIterator

for num in squared_numbers:
    print(num)