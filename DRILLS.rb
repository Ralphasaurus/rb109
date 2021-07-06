# Common complex things to practice:
# => find all sub_strings from a string
# => find all sub_arrays from an array 


# PROBLEM:
# => Find all possible sub_strings in a given string that contain 2 or more letters.

# STEPS:
# initialize a result variable and assign it to an empty array
# initialize a variable to track the index we are currently on
# use until loop with a break condition of index variable being equal to the size of the string - 1. This will ensure we loop through first letter to second to last character.
# within this loop initialize a variable called length and assign it to the integer object 2. This will ensure we start with the correct sub_string length.
# use another until loop with a break condition of length being greater than the size of the string minus the index. So if the length of the string is 4 and we are currently on index 2 which is the second to last character we will only execute the loop one time.
# append to the results array the sub_strings as denoted by the index and length.
# increment length after each inner loop
# increment index after each outer loop
# return the result array


def find_substrings(string)
  result = []
  index = 0
  until index == string.size - 1
    length = 2
    until length > (string.size - index)
      result << string[index, length]
      length += 1
    end
    index += 1
  end
  p result
end

p find_substrings("halo") == ["ha", "hal", "halo", "al", "alo", "lo"]
p find_substrings("ab") == ["ab"]



# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []