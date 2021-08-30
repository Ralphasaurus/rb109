
=begin
Background
There is a message that is circulating via public media that claims a reader can easily read a message where the inner letters of each words is scrambled, as long as the first and last letters remain the same and the word contains all the letters. 

Another example shows that it is quite difficult to read the text where all the letters are reversed rather than scrambled.

In this kata we will make a generator that generates text in a similar pattern, but instead of scrambled or reversed, ours will be sorted alphabetically

Requirement
return a string where:

1) the first and last characters remain in original place for each word
2) characters between the first and last characters must be sorted alphabetically
3) punctuation should remain at the same place as it started, for example: shan't -> sahn't

Assumptions

1) words are separatedseperated by single spaces
2) only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
3) special characters do not take the position of the non special characters, for example: -dcba -> -dbca
4) for this kata punctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
5) ignore capitalisation

for reference: http://en.wikipedia.org/wiki/Typoglycemia

Problem:
    input: a string
    output: new string with rules...
              - words are separated by spaces
              - first and last letters will remain in place
              - ignore and return the punctuation
              - the inner letters should be sorted alphabetically
              - empty strings return empty strings
              - single char return itself, also only two

Algo:
  - if string.empty? return string
  - if string.size <= 2 return string

  - split the string into substrings with split(spaces for delimit)
  - pass each string from above array into this helper:
  
------------------------ HELPER - mod_str -----------------------------
  - create a copy of the string to modify
  - initialize an array for result
  
  - remove and store first
      - if char =~ /\w/ (an alpha)
      - push to arr
      - break
      - else
      - push to arr
      - loop back
      
  - init var to hold chunks
  - iterate through the middle of string
  - if char =~ /\w/ (alpha)
  - add to chunk
  - else
  - (result << chunk.chars.sort.join) if chunk != ''
  - chunk = ''
  - result << char
  - end

 
- remove and store last
      - if char =~ /\w/ (an alpha)
      - push to arr
      - break
      - else
      - push to arr
      - loop back

- return result.join ( helper should return string modified )

------------------------- end helper mod_str --------------------------

  - return array.join(' ')
  
  
=end


def mod_str(str)
  return str if str.size <= 3
  word_arr = str.dup.chars
  first = []
  last = []
  
  # remove first
  loop do
    i = 0
    if word_arr[i] =~ /\w/
      first << word_arr.shift
      break
    else
      first << word_arr.shift
      i += 1
    end
  end
  
  # remove last
  saved = ''
  loop do
    i = -1
    if word_arr[i] =~ /\w/
      last << word_arr.pop + saved
      break
    else
      saved = word_arr.pop
      i -= 1
    end
  end
  
  # sort middle
  alpha = []
  non_alpha = {}
  word_arr.each_with_index do |char, idx|
    if char =~ /\W/
      non_alpha[char] = idx
    else alpha << char
    end
  end
  alpha.sort!
  
  non_alpha.each do |k, v|
    if alpha[v] == nil 
      alpha << k
    else alpha[v] = k + alpha[v]
    end
  end
  
  (first + alpha + last).join
end

def scramble_words(str)
  return str if str.empty? || str.size <= 2
  arr = str.split(" ")
  answer = arr.map { |word| mod_str(word) }.join(" ")
  answer
end

# p scramble_words('professionals') == 'paefilnoorsss'
# p scramble_words('i') == 'i'
# p scramble_words('') == ''
# p scramble_words('me') == 'me'
# p scramble_words('you') == 'you'
# p scramble_words('card-carrying') == 'caac-dinrrryg'
# p scramble_words("shan't") == "sahn't"
# p scramble_words('-dcba') == '-dbca'
# p scramble_words('dcba.') == 'dbca.'
# p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."

p scramble_words "won't a pathognomonic. walk you're come pandiculation"




