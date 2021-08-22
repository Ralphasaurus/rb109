# Task
# In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up. 
# Rules
# 1.  The input string will always be lower case but maybe empty.

# 2.  If the character in the string is whitespace then pass over it as if it was an empty seat
# Example
# wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

# Problem:
# => input: string
# => output: an array containing strings
# => we are given a string and we need to return an array whose elements will be the same string with the wave running through it...
# => empty string inputs will return empty arrays
# => white spaces should just be returned as is.

# Data Structures and Algo's
# => initialize a results array to catch all the strings
# => iterate through the string with each_char
# => inside the block |el|
# => if the element is a letter
# => we need to capitalize it
# => store the string in the result array
# => if the element is anything else skip it
# => return the array

# Code
def wave(str)
  result = []
  arr = str.dup.chars
  arr.each_with_index do |element, idx|
    if element =~ /[a-zA-Z]/
      arr[idx].upcase!
      result << arr.join
      arr[idx].downcase!
    else next
    end
  end
  result
end



# Examples and Test Cases
p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]



