# Given the string of chars a..z A..Z do as in the sample cases. (This is an easier problem).
# 8:37
# 8:51
# input: a string
# output: another string

# Problem 
#   Based off the index we are returning a string that represents the original string, 1st capitalized. then we are duplicating based off the index. And in between these groups when have a hyphen. 

# Steps to do this:
  
#   - initilize a variable empty array
#   - iterating through the string, each_with_index
#   - add the first letter capitalized to the array
#   - if index == 0 one letter
#   - if index == 1 two letters
#   - add hypen

def accum(string)
  result = []
  string.chars.each_with_index do |char, idx|
    result << char.upcase
    if idx > 0
      result << (char.downcase * idx)
    end
    result << "-" unless (idx == string.size - 1)
  end
  p result.join
end


p accum("abcd") == "A-Bb-Ccc-Dddd"
p accum("RqaEzty") == "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
p accum("cwAt") == "C-Ww-Aaa-Tttt"