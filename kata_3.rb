# Return substring instance count
# Complete the solution so that it returns the number of times the search_text is found within the full_text.

# Usage example:

# Problem:
# input: a string, and a pattern
# output: an integer representing the number of times the pattern occurs in the string

# Data structures and Algo's
# => high level:
# => we have a pattern and we need to see how many times it occurs
# =>  we need to break the string into chunks the size of the pat
# => initialize a variable the value of str.split
# => until x.empty
# => array << str.pop(pat.size)
# => end

def solution(str, pat)
  result = []
  array = str.split('')
  array.each_with_index do |char, idx|
    result << array[idx..(idx + (pat.size - 1))].join
  end
  result.count(pat)
end

# Examples and Test cases:

p solution('aa_bb_cc_dd_bb_e', 'bb') == 2 # should return 2 since bb shows up twice
p solution('aaabbbcccc', 'bbb') == 1 # should return 1

p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1
