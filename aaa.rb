# Given a string. return all available substrings from the given string. If input is empty return empty array.
=begin
Problem:
    -inputs: a string
    -output: an array containing all substrings

Algo:
    - find all available substrings
        -initialize an empty array and assign it to results var
        -initialize a var/arr to hold the string split into chars
        -iterate through this array with index
          - within this iteration iterate from current_idx - arr.size
          -push subs to results arr
        -return subs

=end

def find_subs(str)
  results = []
  chars = str.chars
  chars.each_index do |idx|
    (chars.size - idx).times do |in_idx|
      results << chars[idx..(in_idx + idx)].join
    end
  end
  p results
end

# Examples:
    p find_subs("abc") == ['a', 'ab', 'abc', 'b', 'bc', 'c']
    p find_subs("") == []
    
    
    
