# Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.

# Problem:
# input: a string
# output: a string turned into pig latin
# => first letter goes to the end
# => append 'ay' to the string
# => ignore punctuation

# Data structures and Algo's
# high level
# => we need to iterate through the string picking out the words...
# => we can use split with a ' ' for a delimeter to get the words in a collection
# => iterate through this array
# =>
# => remove the first character in the word and add 'ay' to the end of the word
# =>
# => 

def pig_it(str)
  words = str.split
  pigified = []
  words.each do |word|
    if word =~ /\w/
    word += "#{word.chr}ay"
    word[0] = ''
    pigified << word
    else pigified << word
    end
  end
  pigified.join(' ')
end

# Examples
p pig_it('Pig latin is cool') == 'igPay atinlay siay oolcay'
p pig_it('Hello world !') == 'elloHay orldway !'
