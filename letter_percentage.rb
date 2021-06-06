# In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

# In my own words:
    # define a method that takes a string and returns a hash that contains the percentages of each item. The 3 items are lowercase letters, uppercase letters, and neither of those. Can assume all strings will contain at least one character.

# input: a string
# output: a hash

# steps:
# => initialize a hash that contains the 3 elements
# => hash[:lowercase] = string.count(/[a-z]/) / 100.to_f
# => hash[:uppercase] = string.count(/[A-Z]/) / 100.to_f
# => hash[:neither] = string.count(/[^a-zA-Z]/) / 100.to_f
# => return the hash

def letter_percentages(string)
  hash = { lowercase: 0, uppercase: 0, neither: 0 }
  lower = 0
  upper = 0
  neither = 0
  string.chars.each do |char| 
    if char =~ /[a-z]/
      lower += 1
    elsif char =~ /[A-Z]/
      upper += 1
    else neither += 1
    end
  end
  hash[:lowercase] = ((lower / string.size.to_f) * 100).round(2)
  hash[:uppercase] = ((upper / string.size.to_f) * 100).round(2)
  hash[:neither] = ((neither / string.size.to_f) * 100).round(2)
  p hash
end

p letter_percentages('abcdefGHI')
p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }