# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character.

def string_c(string)
  p (string.chars | []).join
end

# test cases
p string_c("aabcccdeeee") == "abcde"