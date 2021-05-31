# The Fibonacci series is a sequence of numbers starting with 1 and 1 where each number is the sum of the two previous numbers: the 3rd Fibonacci number is 1 + 1 = 2, the 4th is 1 + 2 = 3, the 5th is 2 + 3 = 5, and so on.

# RECURSIVE METHOD RULES:
# They call themselves at least once.
# They have a condition that stops the recursion (n == 1 above).
# They use the result returned by themselves.

# write a method that determines the nth fibonacci number where n is the argument to the method.

def fib(n)
  return 1 if n <= 2
  fib(n - 1) + fib(n - 2)
end

# we want to pluck the elements out of an array whose index is a fibonacci number
# and put them in a new array, return that array.


# p fib(1) == 1
# p fib(2) == 1
# p fib(3) == 2
# p fib(4) == 3
p fib(5) == 5
p fib(6) == 8
# p fib(12) == 144
# p fib(20) == 6765



