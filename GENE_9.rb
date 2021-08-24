# In this kata you are required to, given a string, replace every letter with its position in the alphabet.

# If anything in the text isn't a letter, ignore it and don't return it.

# "a" = 1, "b" = 2, etc.

# Problem:
# => input: a string
# => output: a string that represents each character's position in the alphabet
# =>          separated by spaces.
# => anything not a letter is ignored and not returned in the new string.

# Data structures and Algo's
# => we'll need to build some kind of reference hash or something to store the alphabet and it's positions
# => then iterate through the string mabye use each_char
# => look up the letter in the reference and return its position and add it to a new string/array to return from the method...
# LOWER LEVEL...
# => creating the alphabet reference:
# => ('a'..'z').to_a

def alphabet_position(str)
  array = ('a'..'z').to_a
  hash = {}
  result = []
  array.each_with_index do |char, idx|
    hash[char] = (idx + 1)
  end
  str.each_char do |char|
    if char =~ /\w/
    result << "#{hash[char.downcase]} "
    else next
    end
  end
  result.join.rstrip
end


# Example
p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
