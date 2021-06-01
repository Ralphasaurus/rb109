# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

# Write out the problem in your own words:
  # -so we are defining a method that take two arguments, first argument is a string, second argument is an integer. And this method will output the given string argument as many times as the integer argument says.
# Steps:
    # - use the #times method to repeat the process of printing out the string
    # - call the puts method within the block of the times method to display the output.

def repeat(string, i)
  i.times { puts string }
end



repeat('Hello', 3)