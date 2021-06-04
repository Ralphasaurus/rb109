# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.

# in my own words: define a method, that takes one argument, an array of integers. And the method will return an average of all the numbers in the array in integer form.

# input: an array of integers
# output: an integer, that is the average of all the integers in the given array.

# steps:
# => use the reduce method to sum all the integers in the array
# => divide this return value by the size of the array.

def average(array)
  array.reduce(:+) / array.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40