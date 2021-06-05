# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

# in my own words: define a method that takes one argument, a positive integer, and returns the sum of it's digits. Write this method without any basic looping constructs.

# input: an integer
# output: the sum of the digits in the argument

# steps:
# => use to_s method to transfor the integer to a string.
# => the use the chars method to isolate the integers.
# => use the reduce method or sum method to sum the digits
# => return this sum

def sum(integer)
  integer.to_s.chars.map { |element| element.to_i }.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45