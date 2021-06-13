# Define a method that returns all the substrings in a given string argument.

# algorithm:
  # - initialize a results array
  # - use the chars method to break the string down into individual characters to iterate over
  # - using the index of this array iterate through
  # - within this iteration: iterate again through the current index to the end of the array.
  # -  add to the results array the letters from the current index to the end of the string/array.
  # - 

def find_all_substrings(string)
  results = []
  array = string.chars
  array.each_index do |start_index| # iterate over each index in the array
    start_index.upto(array.length - 1) do |current_iteration| # starting at the current index, add to the results array the input string characters at specific indices. 
      results << string[start_index..current_iteration] # 0..0, 0..1, 0..2
    end
  end
  p results
end


# Examples:
p find_all_substrings("abc") == ['a', 'ab', 'abc', 'b', 'bc', 'c']

