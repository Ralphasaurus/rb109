# Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

# =>write the problem in my own words.
      # -creating a method that takes one argument. this argument will be an integer. It can be postive, negative, or zero. The method will return a boolean value, depending upon if the argument is an odd number.
# steps:
# => use the odd? method to return true or false.

# def is_odd?(int)
#   int.odd?
# end

# what if the odd? method cannot be used?

# steps:
# => if the integer modulus 2 is not equal to 0 it's not even

def is_odd?(int)
  (int % 2 != 0) ? true : false
  
end

# test cases
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true