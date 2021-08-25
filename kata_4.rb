# Alphabet symmetry
# Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. In the alphabet, a and b are also in positions 1 and 2. Notice also that d and e in abode occupy the positions they would occupy in the alphabet, which are positions 4 and 5.

# Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each word. For example,

# solve(["abode","ABc","xyzD"]) = [4, 3, 1]
# See test cases for more examples.

# Input will consist of alphabet characters, both uppercase and lowercase. No spaces.
# Problem:
# => again i need to create a reference hash for the alphabet
# => array = ("a".."z").to_a
# => alpha_pos = Hash.new(0)
# => array.each_with_index do |el, idx|
# =>  alpha_pos[el] = (idx + 1)
# ... the ol trick...
# => now that we have a reference to the alphabet's positions...
# input: an array of strings
# ouput: an array of integers that reflect counts of matching positions
# we need to iterate through the array
# then within the block iterate through the strings with each_char
# if char's position is the same as hash[char]
# increment a counter...

def alpha()
  array = ('a'..'z').to_a
  alpha_pos = Hash.new(0)
  array.each_with_index do |letter, idx|
    alpha_pos[letter] = (idx + 1)
  end
  alpha_pos
end

def solve(array)
  alpha_ref = alpha()
  count = []
  array.each do |word|
    counter = 0
    word.chars.each_with_index do |char, idx|
      if alpha_ref[char.downcase] == (idx + 1)
        counter += 1
      else next
      end
    end
    count << counter
    counter = 0
  end
  count
end


p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]
