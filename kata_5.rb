# Longest vowel chain
# The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. Given a lowercase string that has alphabetic characters only and no spaces, return the length of the longest vowel substring. Vowels are any of aeiou.

# Problem:
# input: string
# output: an integer representing the longest vowel chain
# we will have a string with only lowercase letters and no spaces.
# we need to iterate through the input and find the longest vowel sub_string and return it.
# so it might be a good idea to find all the vowels and add them to a result array
# then return the item from the array that happens to be the longest.

# Data Structures and Algo's
# => initialize a variable to hold the sub_strings array
# => iterate through the string with each index
# => inside the block write
# => if last char in the string input is a vowel
# => add the current char to it and store in result
# => after we have iterated through the entire string 
# => result.sort_by { |char| char.length }.first

# Code:
def solve(str)
  vowels = ['a', 'e', 'i', 'o', 'u']
  result = []
  sub_strings_arr = str.chars
  sub_strings_arr.each_with_index do |char, idx|
    if (result.empty?) && (vowels.include?(char))
      result << char
    elsif vowels.include?(char) && (vowels.include?(sub_strings_arr[idx - 1]))
      result[-1] += char
    elsif vowels.include?(char)
      result << char
    else next
    end
  end
  result.sort_by { |str| str.length }.last.length
end

# Examples and Test Cases:

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8
