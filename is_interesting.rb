# input: a number and an array of "awesome_phrases" (integers)
# output: 0, 1, or 2
      # 0 is not interesting
      # 1 is approaching interesting, i.e. within 2 of interesting
      # 2 is interesting

# interesting numbers are:
  # any integer that ends in all zeros, 100, 9000
  # any integer that is made up of all the same numbers, 1111
  # integers with sequential incrementaion, 1234567890
  # integers with sequential decrementation, 43210
  # integers that are palindromes, 1221, 73837
  # integers that are in the awesome phrases array

# Rules:
    # a number is only interesting if it's greater than 99
    # the input will always be between 0 and 1,000,000
    # an awesome phrase will always be provided and will always be an array,
    #   but it might be an empty array.

# Steps:
# - check to see if the input is less than 100
# - check to see if the input matches any of the awesome phrases.
# - call .digits.reverse to create an array
# - check to see if the array ends in all zeros
#     - array[1..-1].all?(0)
# - check to see if the digits are sequential:
#     - result = []
#     - array.each_with_index do |i, idx|
#     - i + 1 == array[idx + 1] ? result << true : result << false
#     - end
#     - result.all?(true)
# - check same thing except opposite for decrementing
# - check palindromes:
#     - digits == digits.reverese ? true : false


def check_awesome(number, phrase)
  phrase.any?(number)
end

def ends_in_zeros?(array)
  array[1..-1].all?(0)
end

def incrementing?(array)
  result = []
  array.each_with_index do |i, idx|
    if (i + 1 == array[idx + 1]) || (array[idx + 1] == nil)
      result << true
    else result << false
    end
  end
  result.all?(true)
end

def decrementing?(array)
  result = []
  array.each_with_index do |i, idx|
    if (i - 1 == array[idx + 1]) || (array[idx + 1])
    result << true
    else result << false
    end
  end
  result.all?(true)
end

def is_palindrome?(array)
  array == array.reverse
end

def is_interesting(number, awesome_phrases)
  array = number.digits.reverse
  results = { match_phrase: false,
              ends_zeros: false,
              incrementing: false,
              decrementing: false,
              palindrome: false
            } 
  return 0 if number < 98
  return 1 if (number > 97) && (number < 100)
  
  results[:match_phrase] = check_awesome(number, awesome_phrases)
  results[:ends_zeros] = ends_in_zeros?(array)
  results[:incrementing] = incrementing?(array)
  results[:decrementing] = decrementing?(array)
  results[:palindrome] = is_palindrome?(array)

  if results.any? { |_, v| v == true }
    return 2
  elsif is_interesting((number + 1), awesome_phrases) == 2
    1
  elsif is_interesting((number + 2), awesome_phrases) == 2
    1
  else 0
  end
end

# So our problem here is the recursion is causing a timeout on the codewars site..
# need to figure out solution that doesn't involve recursion...

# Test Cases:
# p is_interesting(3, [1337, 256]) == 0
# p is_interesting(1336, [1337, 256]) == 1
# p is_interesting(1337, [1337, 256]) == 2
# p is_interesting(11208, [1337, 256]) == 0
# p is_interesting(11209, [1337, 256]) == 1
# p is_interesting(11211, [1337, 256]) == 2