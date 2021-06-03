# ROT13 is a simple letter substitution cipher that replaces a letter with the letter 13 letters after it in the alphabet. ROT13 is an example of the Caesar cipher.

# Create a function that takes a string and returns the string ciphered with Rot13. If there are numbers or special characters included in the string, they should be returned as they are. Only letters from the latin/english alphabet should be shifted, like in the original Rot13 "implementation".

def helper(index)
  add_13 = index + 13
  if add_13 > 26
    add_13 - 26
  else add_13
  end
end

def cipher(string)
rot = %w( a b c d e f g h i j k l m n o p q r s t u v w x y z )
rot_hash = {}
return_ans = []
rot.each_with_index do |letter, index|
  rot_hash[index + 1] = letter
end

string.chars.each do |char|
  rot_hash.each do |k, v|
    if v == char
      return_ans << rot_hash[helper(k)]
    end
  end
end
p return_ans
p return_ans.join
end

cipher("test")
cipher("this is my cipher")

# this doesn't work because we are not returning the spaces...