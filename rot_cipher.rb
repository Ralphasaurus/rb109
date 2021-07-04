require 'pry'
require 'byebug'

ROT_1 = %w( a b c d e f g h i j k l m )
ROT_2 = %w( n o p q r s t u v w x y z )

def rot13(message)
  array = message.chars
  answer = []
  array.each do |char|
    if char =~ /\d/
      answer << char
    elsif char =~ /\w/
      ROT_1.each_with_index do |letter, idx|
        if char == char.downcase
          letter == char.downcase ? answer << ROT_2[idx] : next
        else
          letter == char.downcase ? answer << ROT_2[idx].upcase : next
        end
      end
      ROT_2.each_with_index do |letter, idx|
        if char == char.downcase
          letter == char.downcase ? answer << ROT_1[idx] : next
        else
          letter == char.downcase ? answer << ROT_1[idx].upcase : next
        end
      end
    else answer << char
    end
  end
  answer.join
end

p rot13("EBG13 rknzcyr.") == "ROT13 example."