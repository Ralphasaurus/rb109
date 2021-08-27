# 08/26/2021 study session with TA Jessica Chang

# PEDAC, inputs/outputs, break down the problem, solve it before you code!

# For "x", determine how many positive integers less than or equal to "x" are odd but not prime. Assume "x" is an integer between 1 and 10000.

# Example: 5 has three odd numbers (1,3,5) and only the number 1 is not prime, so the answer is 1
# Example: 10 has five odd numbers (1,3,5,7,9) and only 1 and 9 are not prime, so the answer is 2

# A prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.

# Problem:
# - determine how many positive integers <= 'x' are odd and not prime
# => input: an integer
# => output: an integer

# Algo:
# => Find all integers <= input 
  # - (1..n).to_a
  
# => select the ones that are odd but not prime
  # - prime helper
  # - divisible by self and 1 only
  # - check to see if every int between 1 and int
# => return the count

def prime?(int)
  return false if int == 1
  array = (2..(int - 1)).to_a
  arr = array.map do |i|
    if int % i == 0
      false
    else true
    end
  end
  arr.all?(true)
end

# p prime?(1) == false
# p prime?(5) == true
# p prime?(7) == true

def odd_not_prime(n)
  odds_arr = (1..n).to_a.select { |i| i.odd? }
  non_prime = odds_arr.select do |i|
    prime?(i) ? false : true
  end
  non_prime.count
end

p odd_not_prime(15) == 3
p odd_not_prime(48) == 10
p odd_not_prime(82) == 20