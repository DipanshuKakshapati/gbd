def fibonacci(n):
    a, b = 0, 1 # initiaizing the first two fibonacci numbers
    while a <= n: # a condition where the loop goes on until it is less than the limit
        yield a # yeilding the current fibonacci number
        a, b = b, a + b # updating the next fibonacci numbers

N = 6 # defining the number of fibonacci numbers to display
fib_gen = fibonacci(N) # creating a generator with no effective upper limit

for i in fib_gen:
    print(f"{i}")
