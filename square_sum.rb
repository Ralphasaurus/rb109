# Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

# In my own words: define a method that computes the difference between the (square of the sum) of the first n positive integers and the (sum of the squares) of the first n positive integers...

# input: an integer
# output: an integer

# steps:
# => initialize a result variable
# => initialize a sq_of_sum variable
# => initialize a sum_of_sq variable
# => use upto method to iterate throught the series.
# => use maths

def sum_square_difference(n)
  sum = 0
  sum_of_sq = 0
  1.upto(n) do |current_num|
    sum += current_num
  end
  1.upto(n) do |current_num|
    sum_of_sq += (current_num**2)
  end
  (sum**2) - sum_of_sq
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150