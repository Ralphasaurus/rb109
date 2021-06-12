# Define a method that returns all the substrings in a given string argument.

# algorithm:
  # - initialize a results array
  # - use the chars method to break the string down into individual characters
  # - counter = array.size - 1
  # - for each character in the array:
  #             results << character + character[current_index..(counter)]
  # -           counter - 1

def find_all_substrings(string)
  results = []
  array = string.chars
  array.each_with_index do |letter, index|
    counter = array.size - 1
    (array.size - index).times do
      results << array[index..counter]
      counter -= 1
    end
    counter = array.size - 1
  end
  p results
end


# Examples:
p find_all_substrings("abc") == ['a', 'ab', 'abc' 'b', 'bc', 'c']