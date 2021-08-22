# Given a string that includes alphanumeric characters ('3a4B2d') return the expansion of that string: The numeric values represent the occurrence of each letter preceding that numeric value. There should be no numeric characters in the final string. Empty strings should return an empty string.

# The first occurrence of a numeric value should be the number of times each character behind it is repeated, until the next numeric value appears.

# Problem
# => input: a string
# => output: a string
# we are given an alphanumeric string
# we need to return an 'expanded' string
# each number is going to be how many times the following letter should occur in our new string. we're not doing patterns. if there are multiple letters after a number than each of those letters will have a to multiplied separately. if there are extra consecutive numbers, use the first, ignore the rest. must work for lowercase and uppercase letters. empty strings will return empty strings.


# Data structures and Algo's
# => initialize a result variable and assign it an empty array
# => initialize a multiple variable to hold our count, set to 0
# => iterate through the string
# => if the character is a number store the number in the multiple var
# => if the character is a letter append the concatenated string to the result
# => join and return the result


def string_expansion(str)
  result = []
  multiple = 1
  str.each_char do |char|
    if (char.to_i == 0) && (char != "0")
      result << (char * multiple)
    else multiple = char.to_i
    end
  end
  result.join
end


# Examples and test cases

p string_expansion('3D2a5d2f') == 'DDDaadddddff'
p string_expansion('3abc') == 'aaabbbccc'       # correct
p string_expansion('3abc') != 'aaabc'           # wrong
p string_expansion('3abc') != 'abcabcabc'       # wrong
# If there are two consecutive numeric characters the first one is ignored.

p string_expansion('3d332f2a') == 'dddffaa'
# If there are two consecutive alphabetic characters then the first character has no effect on the one after it.

p string_expansion('abcde') == 'abcde'
# Your code should be able to work for both lower and capital case letters.

p string_expansion('') == ''