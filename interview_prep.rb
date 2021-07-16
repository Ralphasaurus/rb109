# return an array of all substrings from a given string that are palindromes. If
# there are none, return an empty array.

# Problem:
# => Input: string
# => Output: an array
# => We need to return an array of all the substrings that are palindromes. So
# => to do this we'll need to know:
# =>                                -all the available substrings that are > 2
# =>                                -and which ones are palindromes


# Data Structures and Algorithms
# High Level: 
# => First we need to find all the available sub_strings
# => Then check to see if any of them are palindromes
# => Could use reverse for that...
# Lower Level:
# => initialize an array object and assign it to variable sub_strings
# => To find all sub_strings that are 2 or longer:
# => loop through each index or character in the string(outer loop)
# => loop to append all sub_strings that are 2 or longer
# => use select to iterate and select the elements from the sub_strings array that
# => return true after being passed into the palidrome? method.
require 'pry'
require 'byebug'

def palindrome?(string)
  string == string.reverse
end

def find_palindromes(string)
  # binding.pry
  sub_strings = []
  counter = 0
  loop do
    break if counter == (string.size - 1)
    inner_count = 2
    loop do
      break if inner_count > (string.size - counter)
      sub_strings << string[counter, inner_count]
      inner_count += 1
    end
    counter += 1
  end
  sub_strings.select do |str|
    palindrome?(str)
  end
end




# Test Cases:
p find_palindromes("aabbcc") == ['aa', 'bb', 'cc']
p find_palindromes("aba") == ["aba"]
p find_palindromes("abcd") == []
p find_palindromes("mommy") == ['mom', 'mm']