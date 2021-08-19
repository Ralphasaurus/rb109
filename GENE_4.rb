# Task
# Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.

# Example
# For n = 152, the output should be 52;

# For n = 1001, the output should be 101.

# Input/Output
# [input] integer n

# Constraints: 10 ≤ n ≤ 1000000.

# [output] an integer

# Problem:
# input: integer
# output: an integer representing the maximal number obtainable by deleting a digit
# => we can't shuffle digits around we just have to delete them in place and then find the largest one

# Data Structures and Algo's
# => initialize an array to hold the possible numbers
# => int.to_s.chars.map { |char| char.to_i } to create an array of the integers
# => then we need to remove each digit one at a time
# => sum the remaining
# => add this total to results array
# => put the number back
# => choose the max from the array and return it

def delete_digit(int)
  array = int.to_s.chars.map { |char| char.to_i }
  results = {}
  array.each_with_index do |num, idx|
    local = array.dup
    local.delete_at(idx)
    results[local] = local.join.to_i
  end
  largest = results.max_by do |_, v|
    v
  end
  largest[0].join.to_i
end

# Examples and Test Cases
p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(5506) == 556

