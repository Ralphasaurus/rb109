# Write a method that takes a string as an argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.
# input: a string
# output: a boolean

# algorithm:
# => parentheses must be equal.
# => first must be '('
# => last must be ')'

# steps:
# => create an array of the characters of the string with chars method
# => iterate through and append the parentheses to an array
# =>  array.size must be even
# => first and last must be balanced

def balanced?(string)
  input_array = string.chars
  paren_array = []
  input_array.each do |char|
    paren_array << char if char == '(' || char == ')'
  end
  return true if paren_array.empty?
  (paren_array.size.even?) && (paren_array.first == '(') && (paren_array.last == ')')
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false