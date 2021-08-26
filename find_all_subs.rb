# Given a string. return all available substrings from the given string.

# Problem:
# input: a string
# output: all available substrings from the input in a array format.

# Algo
# => iterate through the string
# => on every iteration push the substrings

def find_subs(str)
  result = []
  str.chars.each_index do |current_idx|
    (str.size - current_idx).times do |inner_idx|
      result << str[current_idx..(current_idx + inner_idx)]
    end
  end
  p result
end

# Examples:
find_subs("abc") == ['a', 'ab', 'abc', 'b', 'bc', 'c']