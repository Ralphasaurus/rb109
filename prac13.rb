# Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

# in my own words: define a method that takes 2 arguments, a positive integer and a boolean value. You will be calculating the bonus salary. The bonus is going to be half the salary if the boolean argument is true, otherwise none.

# input: an integer representing salary and true or false.
# output: an integer representing the bonus.

# steps:
# => use the ternary operator which defines an if/else expression to say:
# => if the boolean is true return half the first argument, else 0

def calculate_bonus(salary, bonus)
  bonus ? salary / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000