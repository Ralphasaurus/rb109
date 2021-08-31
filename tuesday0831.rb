# (https://www.codewars.com/kata/514a024011ea4fb54200004b/train/ruby)
# 5 kyu
=begin
Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. For example:

domain_name("http://github.com/carbonfive/raygun") == "github" 
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"

Problem:
    -input: a string containing a url
    -output: a string containing the domain name from the input
    
Algo:
- split the string with '.'

- iterate through array 

- if word match http



=end

# def domain_name(address)
#   array = address.split('.')
#   array.each do |element|
#     if element =~ /www/
#       return array[1]
#     elsif element =~ /http/
#       return element.split('//')[1]
#     else return array[0]
#     end
#   end
# end

# p domain_name('ican.org') == 'ican'
# p domain_name('https://www.codewars.com/kata') == 'codewars'
# p domain_name("https://google-meets.com") == 'google-meets'
# p domain_name("http://google.com") == "google"
# p domain_name("http://google.co.jp") == "google"
# p domain_name("www.xakep.ru") == "xakep"
# p domain_name("https://youtube.com") == "youtube"


#-------------------- NEW PROBLEM ------------------------

=begin
(https://www.codewars.com/kata/545cedaa9943f7fe7b000048/train/ruby)
6 kyu

A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.

Problem:
    input: a string
    output: a boolean
  We need to check to see if the input contains every letter of the alphabet atleast once.
  
Algo:
- initialize a new hash (a..z)

- iterate through str.chars
- push count to alpha

- alpha.values.all? do 
=end

def panagram?(str)
  alpha = Hash.new(0)
  ('a'..'z').to_a.each do |letter|
    alpha[letter] = 0
  end
  str.chars.each do |char|
    char =~ /\w/ ? alpha[char.downcase] += 1 : next
  end
  
  alpha.values.any?(0) ? false : true
end

p panagram?("The quick brown fox jumps over the lazy dog.") == true
p panagram?("This is not a pangram.") == false
