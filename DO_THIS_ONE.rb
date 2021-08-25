

# Given integer array nums, return the third maximum number in this array. If the third maximum does not exist, return the maximum number.
# You are not allowed to sort the array

=begin
ALGORITHM:

# get main_number
  - return max number

# iterate through array

# get next highest numbers
  - remove and save to local variables
  - evaluate if next integer is less than max but larger than second
  - evaluate if next integer is less than max and less than second

# compare and return results
  
=end


p third_max([3,2,1]) == 1
p third_max([1,2]) == 2
p third_max([2,2,3,1]) == 1
p third_max([1, 3, 4, 2, 2, 5, 6]) == 4

# NEXT


# Given an array of n positive integers and a positive integer s, find the minimal length of a contiguous subarray of which the sum ≥ s. If there isn't one, return 0 instead.

=begin
Problem: return the size of the smallest array that sums to the second argument or greater. Else, return 0. 

Algorithm: 
Return all subarrays. 
   # 2 nested loops
   # upto, eachwithindex
Select which arrays sum to s or greater. 
Return the shortest array. 
Else return 0. 
=end

# def min_sub_length(n, s)
#   subs = find_subarrays(n)
#   greater_than = find_greater_than_target(subs, s)
#   find_shortest(greater_than)
# end

# def minSubLength(n, s)
#   subarrays = []
#   n.each_with_index do |num1, index1|
#     n.each_with_index do |num2, index2|
#       subarrays << n[index1..index2]
#     end 
#   end 
  
#   long_arrays = subarrays.select { |sub| sub.sum >= s }
  
#   long_arrays.empty? ? 0 : long_arrays.min_by(&:size).size
# end 

# p minSubLength([2,3,1,2,4,3], 7) == 2
# p minSubLength([1, 10, 5, 2, 7], 9) == 1
# p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
# p minSubLength([1, 2, 4], 8) == 0
