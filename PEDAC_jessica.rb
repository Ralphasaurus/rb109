=begin
RALPH

Algo:
- (HELPER METHOD)
- valid_inputs(num, s)
- return "Not valid" if:
                      - s <= 0
                      - num < 0
                      - num or s NaN

- initialize an array to hold the results

- loop begin

- break if arrray is full ( size == s ) 

- check if num palindome (HELPER METHOD)
        - num.to_s == num.to_s.reverse
- if yes push to array
- num += 1
- end loop
=end

# def palindome(num, s)
  
# end


# p palindrome(6,4) == [11,22,33,44]
# p palindrome(75,1) == [77]
# p palindrome(101,2) == [101,111]
# p palindrome(20,0) == []
# p palindrome(0,4) == [11,22,33,44]
# p palindrome("ACCDDCCA",3) == "Not valid"
# p palindrome(773,"1551") == "Not valid"
# p palindrome(-4505,15) == "Not valid"
# p palindrome(4505,-15) == "Not valid"


#------------ study session 9/1/21 -----------------------


# Divisors of 42 are : 1, 2, 3, 6, 7, 14, 21, 42. These divisors squared are: 1, 4, 9, 36, 49, 196, 441, 1764. The sum of the squared divisors is 2500 which is 50 * 50, a square!

# Given two positive integers we want to find all integers between them whose sum of squared divisors is itself a square. 42 is such a number.

# The result will be an array of arrays, each subarray having two elements, first the number whose squared divisors is a square and then the sum of the squared divisors.
=begin
Problem:
  -input: 2 integers
  -output: an array of sub_arrays
  
  Given 2 positive integers, find all integers between them, whose sum of sq divisors is a square. like 42....
  
Algo:
  - Find all integers between inputs
  
  - find divisors of each number
    - square them
    - push to array
  
  - if their sum is a square
    - 
  
  - return number whose squared divisors is a square and its sum
  
  - push to a results array

=end

def square?(num)
  arr = []
  (1..num).each do |i|
    if i * i == num
      arr << true
    else arr << false
    end
  end
  arr.any?(true)
end

# p square?(9) == true
# p square?(5) == false

def find_divisors_sq(num)
  arr = []
  (1..num).each do |i|
    if num % i == 0
      arr << (i*i)
    else next
    end
  end
  arr
end

# p find_divisors_sq(4) == [1, 4, 16]

def list_squared(int1, int2)
  result = []
  list = (int1..int2).to_a
  list.each do |num|
    if square?(find_divisors_sq(num).sum)
      result << [num, (find_divisors_sq(num).sum)]
    end
  end
  result
end

p list_squared(1, 250) == [[1, 1], [42, 2500], [246, 84100]]
p list_squared(42, 250) == [[42, 2500], [246, 84100]]
p list_squared(250, 500) == [[287, 84100]]



