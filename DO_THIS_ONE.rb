# Given integer array nums, return the third maximum number in this array. If the third maximum does not exist, return the maximum number.
# You are not allowed to sort the array

# Problem:
# => input: an array of integers
# => output: an integer returning the third maximum number in the array.
# => If it doesn't exist return the max num.
# => Not allowed to sort the array.
# => implicit req... only count a number once.

# Algo:
# =>


# def third_max(arr)
#    top_3 = arr.uniq.max(3)
#    if top_3.size < 3
#       top_3.first
#    else top_3.last
#    end
# end

# p third_max([3,2,1]) == 1
# p third_max([1,2]) == 2
# p third_max([2,2,3,1]) == 1
# p third_max([1, 3, 4, 2, 2, 5, 6]) == 4




# NEXT


# Given an array of n positive integers and a positive integer s, find the minimal length of a contiguous subarray of which the sum ≥ s. If there isn't one, return 0 instead.


# Problem:
# => input: an array, and an integer
# => output: an integer representing the min length of a contiguous subarray
# =>         of which the sum is > s.
# => rules: if none, return 0.

# Algorithm: 
 

 

p minSubLength([2,3,1,2,4,3], 7) == 2
p minSubLength([1, 10, 5, 2, 7], 9) == 1
p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
p minSubLength([1, 2, 4], 8) == 0
