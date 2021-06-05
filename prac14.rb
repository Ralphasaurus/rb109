# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

# in my own words: write a program the randomly generates and outputs Teddy's age. The age of Teddy should be a number between 20 and 200.

# steps: 
# => define a method called teddys_age that takes no arguments
# => initialize an age variable inside the method
# => this age variable will hold the value of a randomly created integer
# => use rand(20..200) method
# => use the puts method to print out the string "Teddy is #{age} years old!"

def teddys_age
  age = rand(20..200)
  puts "Teddy is #{age} years old!"
end

teddys_age

# Example output:
# Teddy is 69 years old!