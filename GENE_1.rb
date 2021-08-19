# Write a function that, given a string of text (possibly with punctuation and line-breaks), returns an array of the top-3 most occurring words, in descending order of the number of occurrences. Matches should be case insensitive. results lowercase. return empty array if no duplicates. 

# Problem:
# => define a function that takes a string as an argument.
# => and returns an array containing the top 3 most occurring words in the string.
# => in decending order.
# need to define a word.
# need to count each word.
# need to list the top 3 in decending order.

# Data Structures and Algorithms
# initilize a totals_hash
# iterate through the string and add each word to totals_hash
# use the word as the key and the count as the value. initial value will be 1.
# *******************************************************************
# now that we have a hash full of the counts of each word we need to return the top 3 most occurring in the form of an array...
# sort hash by values
# return hash[0..2]

def top_3_words(string)
  totals_hash = {}
  result_arr = []
  clean_str = string.gsub!(/[^a-z A-Z "'"]/, "")
  
  clean_str.split.each do |word|
    if totals_hash.include?(word.downcase)
      totals_hash[word.downcase] += 1
    else totals_hash[word.downcase] = 1
    end
  end
  
  totals_hash.max_by(3) do |pair|
    pair[1]
  end.each { |sub_arr| result_arr << sub_arr[0] }
  result_arr
end

p top_3_words("In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.")
# => ["a", "of", "on"]

p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")
# => ["e", "ddd", "aa"]

p top_3_words("  //wont won't won't")
# => ["won't", "wont"]