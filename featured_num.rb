# A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Return an error message if there is no next featured number.

# In my own words: define a method that takes an integer as an argument and returns the next 'featured number'. Return an error message if there is no next number.

# Things of note: 
# => A featured number is:
                          # an odd number,
                          # a multiple of 7,
                          # and whose digits occur exactly once.

# So there are 3 things we need to check, as above...

# Steps:
# => First we need to find the next multiple of 7 after the input.
# => Then we need to check to see if it's odd? <= this method will work.
# => Then we need to see if the separate digits of this number occur only once.
# => Once we find a number that satisfies all of these conditions, return it.
require 'pry-byebug'
def next_num(int)
  remainder = int % 7
  add = 7 - remainder
  next_multiple = int + add
end

def uniq_digits?(int)
  int.to_s.chars.uniq.join.to_i == int
end

def featured(int)
  current_number = next_num(int)
  loop do
    return current_number if uniq_digits?(current_number) && current_number.odd?
    current_number += 7
    break if current_number >= 9_876_543_210
  end
  "There is no featured number..."
end



p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

# p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements