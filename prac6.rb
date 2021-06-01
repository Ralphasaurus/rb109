# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character.

# In my own words:
    # Create a method that takes a string argument. It returns a new string, that contains the original string value. Except all the consecutive duplicate characters are collapsed into a single character. 

# input: a string object
# output: is a new string object

# steps:
# => make a copy of the string with dup
# => examine each character of the string
# =>  - store the current character inside of a variable outside of the each method
# =>  - 
# => if the current character is equal to the last character, remove it
# => after we have iterated through all the characters, return the new string.

def remove_consec_dup(string)
  new_string_array = string.dup.chars
  current_character = []
  new_string_array.each do |char|
    if current_character.last == char
      next
    else current_character << char
    end
  end
  current_character.join
end

# test cases:
p remove_consec_dup("roller") == "roler"
p remove_consec_dup("wwwooondderful worldd") == "wonderful world"




