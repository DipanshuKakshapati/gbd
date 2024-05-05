# redability
name = "Alice"
age = 30
print(f"Hello, {name}. You are {age} years old.")

# expression embedding
price = 19.99
quantity = 3
print(f"Total cost: {price * quantity:.2f}")

# formatting
import datetime
today = datetime.date.today()
print(f"Today's date is {today:%B %d, %Y}")

# debugging
x = 10
y = 5
print(f"x={x}, y={y}, x+y={x+y}")

# avoiding complex expressions
# Hard to read
print(f"Result: {(lambda x: x*2)(10)}")

# easier to read
result = (lambda x: x*2)(10)
print(f"Result: {result}")

# escaping Braces
print(f"{{Hello}} {name}")
