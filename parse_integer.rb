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
  small_nums = []
  total = 0
  array = string.split(/\W/)
  array.each do |word|
    NUMS.each do |key, value|
      key == word ? result << value : next
    end
  end
  result.each_with_index do |value, idx|
    unless (value == 100) || (value == 1000)
    small_nums << value
    small_nums.replace([small_nums.sum])
    else total += (small_nums.pop * value)
    end
  end
  total += (small_nums.sum)
  total
end

p parse_int("one thousand three hundred thirty-seven") == 1337
p parse_int("six thousand six hundred and sixty-eight") == 6668
p parse_int("six hundred sixty-six thousand six hundred sixty-six") == 666666


