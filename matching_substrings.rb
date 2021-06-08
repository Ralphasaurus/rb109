# Give 2 strings. Create a method that returns true or false depending upon if there are matching substrings in each string.

# steps:
# => take the each string and break it down two arrays of pairs of character
#     how to do this:
#     - iterate through the array with each_with_index
#     - append to the pairs array the current letter + first_array[index + 1]
# => merge the two arrays together
# => use uniq to remove any duplicates from a clone of this merged array
# => if the original matches the clone then there are no substring matches
# => otherwise there is, return true.

def substring_test(string1, string2)
  first_array = string1.downcase.chars
  second_array = string2.downcase.chars
  pairs = []
  0.upto(first_array.size - 2) do |num|
    pairs << first_array[num] + first_array[num + 1]
  end
  0.upto(second_array.size - 2) do |num|
    pairs << second_array[num] + second_array[num + 1]
  end
  pair_clone = pairs.dup
  pair_clone.uniq == pairs ? false : true
end


p substring_test('Something', 'fun') == false
p substring_test('Something', 'Home') == true