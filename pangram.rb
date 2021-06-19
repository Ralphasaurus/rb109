# input: string
# output: boolean
# create a array of the alphabet
# iterate through the string
# if 

def pangram?(string)
  alpha = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
  string.chars.each do |element|
    if alpha.include?(element.downcase)
      alpha.delete(element.downcase)
    end
  end
  alpha.empty?
end

p pangram?("The quick brown fox jumps over the lazy dog.") == true