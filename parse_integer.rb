# we have an array called result that contains all of the words in integer format
# we need to iterate through this array and add the integers together
# except if the integer is a 100 or a 1000 we need to multiply it by the
#   previous integer and then store it in a separate array.
# after we have all these integers we need to sum them up and return...
# the example and test case we need to figure out is 666666...

NUMS = { "zero" => 0, "one" => 1, "two" => 2, "three" => 3, "four" => 4,
        "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9,
        "ten" => 10, "eleven" => 11, "twelve" => 12, "thirteen" => 13,
        "fourteen" => 14, "fifteen" => 15, "sixteen" => 16, "seventeen" => 17,
        "eighteen" => 18, "nineteen" => 19, "twenty" => 20, "thirty" => 30, 
        "forty" => 40, "fifty" => 50, "sixty" => 60, "seventy" => 70,
        "eighty" => 80, "ninety" => 90, "hundred" => 100, "thousand" => 1000 }

def parse_int(string)
  p string
  result = []
  hold = []
  hold_large = []
  array = string.split(/\W/)
  array.each do |word|
    NUMS.each do |key, value|
      key == word ? result << value : next
    end
  end
  result.each_with_index do |value, idx|
    if value < 10 
      hold << value
      hold.replace([hold.sum])
    elsif value < 100
      hold << value
      hold.replace([hold.sum])
    elsif value == 100
      hold.replace([(hold.sum * value)])
    elsif value == 1000
      hold_large << (hold.sum * value)
      hold.replace([])
    end
  end
  hold.sum + hold_large.sum
end
p parse_int("one thousand three hundred thirty-seven") == 1337
p parse_int("six thousand six hundred and sixty-eight") == 6668
p parse_int("six hundred sixty-six thousand six hundred sixty-six") == 666666


