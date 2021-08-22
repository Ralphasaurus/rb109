# The alphabetized kata
# Re-order the characters of a string, so that they are concatenated into a new string in "case-insensitively-alphabetical-order-of-appearance" order. Whitespace and punctuation shall simply be removed!

# The input is restricted to contain no numerals and only words containing the english alphabet letters.

# Problem:
# => input: a string
# => output: an alphabetized string
# we are given a string and we need to organized each character of the string alphabetically. We also need to remove punctuation and whitespace. Case does not matter.

# Data Structures and Algo's
# => call the chars method on the string object to transform it into an array of all the individual characters.
# => chain the delete_if method on this call
# => might need to store it in a variable first...
# => inside the block say: x != /[a-z]i/ (if the character is not equal to a letter)
# => then we can sort it

# Code:
def alphabetized(str)
  array = str.chars
  array.delete_if { |x| x =~ /[\W_]/ }
  array.sort { |a,b| a.downcase <=> b.downcase }.join
end



# Example:

p alphabetized("The Holy Bible") == "BbeehHilloTy"