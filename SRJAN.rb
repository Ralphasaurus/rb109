# Find the length of the longest substring in the given string that contains exatly 2 characters "a" and 2 characters "e" in it.

# As an example, if the input was “aaee”, the substring (aaee) length would be 4.
# For a string "babanctekeaa", the longest substring is "babancteke" and its length is 10.

# If the length of the input string is 0, return value must be -1 and if none of the substrings contain 2 "a" and "e" characters return -1 as well.

# Problem:
# input: a string
# output: an integer representing the length of the longest substring that contains both 2 'a' and 2 'e'.
# if it doesn't contain any 'aa' or 'ee' return -1
# if the length of the string is 0 return -1

# Data Structures and Algo's
# => find all substrings
# - create a helper method for this
# - initialize an array to hold the substrings
# - iterate through the input string.chars.each_with_index
# - inside the block iterate with each_with_index
# - 
# => select the substrings that have exactly 2 'a' and 'e'

# => return the length of the longest

# => if the string is empty or no 'a' or 'e' -- return -1

def sub_strings(str)
  result = []
  array = str.chars
  array.each_with_index do |char, idx|
    (array.size - idx).times do |n|
      result << array[idx..(idx + n)].join
    end
  end
  p result
end

p sub_strings("abc") == ['a', 'ab', 'abc', 'b', 'bc', 'c']

# def longest_ae(str)
  
# end

# # Examples and test cases

# p longest_ae("aaee") == 4
# p longest_ae("babanctekeaa") == 10
# p longest_ae("xenoglossophobia") == -1
# p longest_ae("pteromerhanophobia") == 18
# p longest_ae("johannisberger") == -1
# p longest_ae("secaundogenituareabb") == 16