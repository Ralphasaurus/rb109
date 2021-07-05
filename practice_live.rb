# Given an array of n positive integers and a positive integer s, find the minimal length of a contiguous subarray of which the sum ≥ s. If there isn't one, return 0 instead.

# In my own words... we are given an array of n pos integers and a pos integer s.
# I need to find the minimal length of a contiguous subarray of which the sum > s.
# Input: So we are given an array... and an integer.
# Output: and we need to return an integer, that is the minimal length of a contiguous sub_array.... in which the sum of this sub_array is greater than or equal to s...

# Rules
# We are finding the minimum length of a sub_array
# where the sum of this sub_array is greater or equal to s 

# Steps:
# => initialize a holding array.
# => iterate through the original array and append each element to the holding array.
# => check the sum. if greater than or equal to s
# => then store the length in a variable
# => clear the holding array.
# => move on to the next elements. repeat.
# => return the length

def minSubLength(array, s)
  result = []
  holding_array = []
  array.each do |element|
    
    holding_array << element
    holding_array.sum >= s ? result << holding_array.length : next
    holding_array = []
  end
  p result
  p result.min
end

p minSubLength([2,3,1,2,4,3], 7) == 2
p minSubLength([1, 10, 5, 2, 7], 9) == 1
p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
p minSubLength([1, 2, 4], 8) == 0 