def create_phone_number(numbers)
  area_code = []
  three = []
  four = []
  numbers.each_with_index do |n, i|
      if i < 3
        area_code << n.to_s
      elsif i < 6
         three << n.to_s
      else
      four << n.to_s
      end
  end
  area_code.prepend("(") 
  area_code << ") "
  three << "-"
  (area_code + three + four).join
end

# Given an array of 10 integers, return a string that contains those integers in a telephone format.

p create_phone_number([1,1,1,1,1,1,1,1,1,1]) == "(111) 111-1111"
p create_phone_number([4,0,6,4,9,9,1,7,5,9]) == "(406) 499-1759"