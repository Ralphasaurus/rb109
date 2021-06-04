# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

# in my own words: define a method that takes one argument. a positive integer.
# and returns alternating 1s and 0s. the length of this return string should match the integer...

# input: an integer
# output: a string of 1s and 0s

# steps:
# => create an array to hold the 1s and 0s
# => use the times method with the given argument of the method as an argument to the times method.
# => x many times evalute if the last item in the array was a 1
# => if so add a 0
# => if not add a 1
# => use the join method and return the new string

def stringy(i)
  array = []
  i.times { array.last == 1 ? array << 0 : array << 1 }
  array.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'