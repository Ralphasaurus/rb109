# Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.

# Problem:
# => we are given an integer as an argument to the method that represents the nth fibonacci number.
# => we need to return the nth fibonacci number in the series.
# => the method we create has to be recursive.

# algorithm:
# => 

def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n - 1) + fibonacci(n - 2) # this is the return value unless the conditional above is met.... 
end


# test cases:
p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765