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

def domain_name(address)
  array = address.split('.')
  array.each do |element|
    if element =~ /www/
      return array[1]
    elsif element =~ /http/
      return element.split('//')[1]
    else return array[0]
    end
  end
end

p domain_name('ican.org') == 'ican'
p domain_name('https://www.codewars.com/kata') == 'codewars'
p domain_name("https://google-meets.com") == 'google-meets'
p domain_name("http://google.com") == "google"
p domain_name("http://google.co.jp") == "google"
p domain_name("www.xakep.ru") == "xakep"
p domain_name("https://youtube.com") == "youtube"
