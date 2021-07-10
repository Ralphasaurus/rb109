# find all sub_strings from the given string

# input: string
# output: array of sub_strings

# high level algorithm:
# => initialize an empty array assigned to the variable result
# => use the index to iterate over the string (outer loop)
# => within this iteration (inner loop): append every sub_string to the result
# => once that is done move on to the next index of the string (end of outer loop)
# => return the result

# psuedo code:
# => result = []
# => loop through the string as an array
# => incrementing index = current index
# => inner loop
# => break if increment index == str.size - 1
# => add current_index..incrementing index
# => increment index += 1
# => return result

def find_subs(str)
  result = []
  str.chars.each_index do |idx|
    i_idx = idx # set the starting point of the i_idx to idx
    loop do
      break if i_idx > (str.size - 1)
      result << str[idx..i_idx]
      i_idx += 1
    end
  end
  p result
end


# test cases:
p find_subs("abcd") == %w( a ab abc abcd b bc bcd c cd d)