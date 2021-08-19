# Problem
# => the original array will remain unchanged. return a new array with the first element moved to the last place in the array.

def rotate_array(arr)
  local_array = arr.clone
  local_array << local_array.shift
end


rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x
p x == [1, 2, 3, 4]                 # => true