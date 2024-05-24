# importing needed libraries
import math

class Shape: # this class is meant to be template for all other subclasses
    def area(self):
        raise NotImplementedError('This method will be overridden by subclasses.')
    
    def perimeter(self):
        raise NotImplementedError('This method will be overriddedn by subclasses.')

class Circle(Shape): # creating a subclass Circle
    def __init__ (self, radius): # initializing a circle object, subclass of the Shape class
        self.radius = radius

    def area(self): # calculating area of circle
        return math.pi * self.radius
    
    def perimeter(self): # calculating perimeter of circle
        return 2 * math.pi * self.radius

class Rectangle(Shape): # creating a subclass Rectangle
    def __init__ (self, length, breadth): # initializing a rectangle object, subclass of the Shape class
        self.length = length
        self.breadth = breadth
    
    def area(self): # calculating area of rectangle
        return self.length * self.breadth
    
    def perimeter(self): # calcualting perimeter of rectangle
        return 2 * (self.length + self.breadth)
    
circle = Circle(4) # creating a circle object
rectangle = Rectangle(2, 6) # creating a rectangle object

print(f"Area of circle is: {circle.area():.2f}")

print(f"Perimeter of circle is: {circle.perimeter():.2f}")

print("Area of rectangle is: ", rectangle.area())

print("Perimeter of rectangle is: ", rectangle.perimeter())