# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

# Write it out in your own words:
# # Define a method that takes a single string argument and it returns a new string with the WORDS in reverse order.

# input: a string
# output: a new string

# steps:
# => use the split method to split up the string into an array of words with a space as a delimter.
# => iterate through this array and add the strings to a new array.
# => return the new array

def reverse_sentence(string)
  new = []
  string.split.each { |word| new.prepend(word) }
  new.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'