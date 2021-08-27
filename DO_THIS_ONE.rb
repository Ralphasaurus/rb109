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
# => Find all sub_arrays
      # => helper method
      # => iterate through the array
      # => each_index/ .times methods
      # => push to new array
      
# => Select the sub_arrays where their sum is greater than s
      # => call select method on the previous return value
      # => inside block, sub.sum > s
      
# => Return the shortest sub_array
      # => call min_by

def find_sub_arrays(arr)
  result = []
  arr.each_index do |outer_idx|
    (arr.size - outer_idx).times do |inner_idx|
    result << arr[outer_idx..(inner_idx + outer_idx)]
    end
  end
  result
end

# p find_sub_arrays([1,2,3]) == [[1], [1, 2], [1, 2, 3], [2], [2, 3], [3]]

def minSubLength(arr, i)
  subs = find_sub_arrays(arr)
  correct = subs.select { |array| array.sum >= i }.min_by { |x| x.length }
  p correct
  correct == nil ? 0 : correct.size
end

p minSubLength([2,3,1,2,4,3], 7) == 2
p minSubLength([1, 10, 5, 2, 7], 9) == 1
p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
p minSubLength([1, 2, 4], 8) == 0
