# Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.

# input: a file of strings.
# output: the longest string and an integer representing how long it is.

# steps:
# => save the file to a local variable as a string object
# => split the book/string object into sentences using the split method with delimiters of '.', '?', and '!'. Save this as a local variable.
# => initialize a local variable and assign it to an integer object to keep track of the longest sentence for comparison later.
# => interate through each sentence in the array of sentences.
# => use the split method again on each sentence with a ' ' as a delimiter.
#       - this will return an array containing the words.
#       - on this return value chain the count method which will return an integer based on the number of elements in this array.
# => we will need an conditional if statement to say:
          # - if this returned count number is greater than the current count
          # - store the count and store the sentence.
# => then return the count and the sentence.

book = File.read('book.txt')
array_of_sentences = book.split(/\.|\?|!/)
current_number_of_words = 0
current_sentence = ''
array_of_sentences.each do |sentence|
  local = sentence.split(' ').count
  if local > current_number_of_words
    current_number_of_words = local
    current_sentence = sentence
  else next
  end
end

puts "THE LONGEST SENTENCE IS: #{current_sentence}"
puts "AND THE NUMBER OF WORDS IS: #{current_number_of_words}"