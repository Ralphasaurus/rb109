# 6 kyu
=begin
Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

solve("1341") = 7. See test cases for more examples.

Problem:
    input: string of integers
    output: the count of odd-numbered substrings

Algo:
- find all substrings
  - iterate through string.chars with each_index
  - then iterate again with times
  - push subs to array
  
- select the ones that contain an odd integer
  
- return the count

=end

# def find_subs(str)
#   result = []
#   arr = str.chars
#   arr.each_index do |out_i|
#     (str.size - out_i).times do |in_i|
#       result << arr[out_i..(in_i + out_i)].join
#     end
#   end
#   result
# end

# # p find_subs("ab") == ['a', 'ab', 'b']

# def solve(str)
#   subs = find_subs(str)
#   subs.select do |s|
#     s.to_i.odd?
#   end.count
# end

# p solve("1341") == 7
# p solve("1357") == 10


 

#*************************NEW PROBLEM************************

# 1st Attempt took 6 minutes

=begin
Complete the function that takes an array of words.

You must concatenate the nth letter from each word to construct a new word which should be returned as a string, where n is the position of the word in the list.

For example:

["yoda", "best", "has"]  -->  "yes"
  ^        ^        ^
  n=0     n=1     n=2
Note: Test cases contain valid input only - i.e. a string array or an empty array; and each word will have enough letters.

Problem:
    input: an array of strings
    output: a string of all nth letters
    
Algo:
    iterate through the array
    iterate through the string and push the nth letter to an array
    join the array and return it

=end

# def nth_char(arr)
#   result = []
#   arr.each_with_index do |word, idx|
#     result << word[idx]
#   end
#   p result.join
# end


# p nth_char(['yoda', 'best', 'has']) == 'yes'
# p nth_char([]) == ''
# p nth_char(['X-ray']) == 'X'
# p nth_char(['No', 'No']) == 'No'
# p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'

#*********************NEW PROBLEM*******************************

=begin
For a given nonempty string s find a minimum substring t and the maximum number k, such that the entire string s is equal to t repeated k times. The input string consists of lowercase latin letters. Your function should return a tuple (in Python) (t, k) or an array (in Ruby and JavaScript) [t, k]

Example #1:

for string

s = "ababab"
the answer is

["ab", 3]
Example #2:

for string

s = "abcde"
the answer is 1

because for this string "abcde" the minimum substring t, such that s is t repeated k times, is itself.

Problem
    input: a string
    output: an array. 1st element: a substring of s. 2nd element: the max repetitions to make s.

it seems like we are returning k.


Algo
    find all substrings
    
    iterate through substrings array
    
    until s.size
    double the substring and check to see if it == s
    log count
    if s == modified_sub
    push count to arr
    if none push 1
    
    return result arr.max

=end

def find_subs(string)
  result = []
  arr = string.chars
  arr.each_index do |outer_idx|
    (arr.size - outer_idx).times do |inner_idx|
      result << arr[outer_idx..(inner_idx + outer_idx)].join
    end
  end
  result
end

# p find_subs("ab")

def f(str)
  sub_strings = find_subs(str)
  result = []
  sub_strings.each do |subs|
    multi_str = ''
    count = 0
    until multi_str.size >= str.size do
      multi_str += subs
      count += 1
      if multi_str == str
        result << [subs, count]
      end
    end
  end
  result.max_by { |a| a[1] }
end


p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]






