# Given an array of n positive integers and a positive integer s, find the minimal length of a contiguous subarray of which the sum ≥ s. If there isn't one, return 0 instead.

# input: an array, and an integer
# output: an integer

# Problem:
# => We are given an array and we want to find the smallest sub_array that has a sum that is greater than or equal to the given integer. Return the length of sub_array. If there is none than return a 0.

# Algorithm:
# **High Level**
# => Return 0 if the sum of the array is not greater than or equal to the given int
# => Initialize an array to hold all available sub_arrays
# => ** hard part ** Find all the available sub_arrays and
# => check to see if their sums are >= the given integer
# => add them to a result array.
# => return the size of the one that is the smallest in length.

# Psuedocode:
  # => result = []
  # => sub_strings = subs(array)
  # => sub_strings.each do |sub|
  # =>   if sub.sum >= s
  # =>     result << sub
  # =>   else next
  # =>   end
  # => end
  # => result.min.length

# method that will find all the available substrings in the given array
def subs(array)
  holding_array = []
  index = 0
  until index > (array.size - 1)
    length = 1
    until length > array.size - index
    holding_array << array[index, length]
    length += 1
    end
    index += 1
  end
  holding_array
end

# subs([1,2]) == [[1], [1,2], [2]]
# subs([1,2,3]) == [[1], [1,2], [1,2,3], [2], [2,3], [3] ]

# method that will return an array from the array of sub_strings that meets the requirements of the sum being equal to or greater than the give integer.
def qualified(array, s)
  result = []
  array.each do |sub_array|
    if sub_array.sum >= s
      result << sub_array
    else next
    end
  end
  result
end

def minSubLength(array, s)
  return 0 if array.sum < s
  
  sub_strings = subs(array)
  qualified_subs = qualified(sub_strings, s)
  
  answer = qualified_subs[0].length
  qualified_subs.each do |sub_array|
    sub_array.length < answer ? answer = sub_array.length : next
  end
  answer
end

p minSubLength([2,3,1,2,4,3], 7) == 2
p minSubLength([1, 10, 5, 2, 7], 9) == 1
p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
p minSubLength([1, 2, 4], 8) == 0 