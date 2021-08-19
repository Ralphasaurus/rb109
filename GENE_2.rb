# Find the longest substring in alphabetical order.

# Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".

# There are tests with strings up to 10 000 characters long so your code will need to be efficient.

# The input will only consist of lowercase characters and will be at least one letter long.

# If there are multiple solutions, return the one that appears first.

# Good luck :)

# Problem
# => input: a string
# => output: a string
# => we need to return the longest sub_string that is in alphabetical order.
# => so we probably need to create a list of all the available substrings that are in alphbetical order (an array of strings)
# => then return the longest.
# => if we have a tie return the first sub_string

# Algorithms and Data Structures
# => initialize a variable and assign it to an empty array to hold the substrings
# => iterate through the string with each_char method
# => within the block that we are passing to the each_char method
# => our block parameter will be called letter
# => in our block we need an expression to append each substring to the substring array
# => we can say...
# => if sub_str_array[-1][-1] < letter
# => sub_str_array[-1] + letter
# => else sub_str_array << letter
# => end
# => now that we have an array full of all our available substrings we just need to return the largest.
# => max should work, if not max_by and pass a block with param.length.

# CODE WITH INTENT!!

def longest(str)
  sub_strings = []
  str.each_char do |letter|
    if sub_strings.empty?
      sub_strings << letter
    else
      if sub_strings[-1][-1] <= letter
        sub_strings[-1] += letter
      else sub_strings << letter
      end
    
    end  
  end
  sub_strings.max_by { |char| char.length }
end

# Examples and Test Cases
p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') == 'fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'







