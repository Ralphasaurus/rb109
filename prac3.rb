# write a method to determine if a word is a palindrome, without using the reverse method

# input: a string
# output: true or false

# use chars to turn the string into an array of the substrings
# create an empty array
# shovel into the new array the substrings from the the chars array in reverse
# then join together to create a whole string
# and see if it's equal to the the input

def palindrome?(string)
  chars_arr = string.chars
  new_arr = []
  chars_arr.each { |substring| new_arr.prepend(substring) }
  new_arr.join == string
end

# p palindrome?('mom') == true
# p palindrome?('dad') == true
# p palindrome?('turtle') == false

# what if we had an array of strings?

# iterate through the array of substrings with map
# return true or false 
# return the array of true or false

# def arr_palidromes(array)
#   p array.map { |sub_string| palindrome?(sub_string) }
# end

# p arr_palidromes(['mom', 'dad', 'taco', 'holly']) == [true, true, false, false]

# what if we want to return a hash with the substrings as keys and the boolean as the values?

# input: array
# output: hash with strings as keys and boolean as values

# iterate through the array of strings with each
# determine if it's a palidrome with the helper method
# if so, add the string to the hash as the key with the value returned by the helper method as the value
# return the hash

def palin_hash(array)
  hash = {}
  array.each do |string|
    palindrome?(string) ? hash[string] = true : hash[string] = false
  end
  hash
end

p palin_hash(['mom', 'dad', 'taco', 'holly']) == { 'mom'=> true, 'dad' => true, 'taco' => false, 'holly' => false}

