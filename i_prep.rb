=begin
  create a method that takes a string as and input and returns an array filled
  with all possible substrings.
  
  Algorithm:
    - initialize an array to hold results
    - iterate through the string
    - at every character:
      - string.size - current_idx times do this:
          - add to the results array the current_idx..(current_idx + inner_idx)

=end

def find_subs(str)
  results = []
  arr = str.chars
  arr.each_index do |current_idx|
    (str.size - current_idx).times do |inner_idx|
      results << arr[current_idx..(current_idx + inner_idx)].join
    end
  end
  p results
end

p find_subs("abc") == ['a', 'ab', 'abc', 'b', 'bc', 'c']