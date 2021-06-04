# Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

# input: a string containing one or more words.
# output: the given string with words that are 5 or more characters long reversed.
# side note: each string will consist of only letters and spaces, spaces should be included in the return when more than one word is present.

# steps:
# => turn the string into an array with the split method
# => use the map! method to transform each string greater than 5 characters long into the reversed version of the string.
# => use the join method with " " as a delimiter.
# => return this...

def reverse_words(string)
  string.split.map do |word|
    word.size >= 5 ? word.reverse : word
  end.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS