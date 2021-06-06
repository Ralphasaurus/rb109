# A collection of spelling blocks has two letters per block, as shown in this list:
# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

# Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

# In my own words:
# => defining a method that takes a string. And checking to see if the string can be created with the blocks when each block can only be used once. If so, return true. Otherwise return false.

# Steps:
# => create an array containing sub_arrays that will hold the blocks
# => create an array containing the characters of the string with the chars method
# => iterate through the chars array comparing each character with the sub_arrays of the blocks array
# => if the character matches a block sub_array character
# => delete the sub_array from the block array
# => true
# => else false
# => end


def block_word?(string)
blocks = [['B','O'], ['X','K'], ['D','Q'], ['C','P'], ['N','A'], ['G','T'], ['R','E'], ['F','S'], ['J','W'], ['H','U'],
['V','I'], ['L','Y'], ['Z','M']]
result = []
chars_array = string.chars
blocks.each do |sub_array|
  chars_array.each do |letter|
    if sub_array.include?(letter.upcase)
      result << sub_array
    end
  end
end
result == result.uniq ? true : false
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true