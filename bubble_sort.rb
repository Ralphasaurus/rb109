# Bubble Sort is one of the simplest sorting algorithms available. It isn't an efficient algorithm, but it's a great exercise for student developers. In this exercise, you will write a method that does a bubble sort of an Array.

# A bubble sort works by making multiple passes (iterations) through the Array. On each pass, each pair of consecutive elements is compared. If the first of the two elements is greater than the second, then the two elements are swapped. This process is repeated until a complete pass is made without performing any swaps; at that point, the Array is completely sorted.

# => input: an array
# => output: the same array, sorted from least to greatest.

# algorithm:
# => until no swaps are made: 
        # break condition - input array == output array
# => iterate through each element in the array
        # each_with_index
# => store current_index and (current_index + 1) in a 2 element array
# => if current_index > (current_index + 1)
        # swap
# => next iteration
# => if no swaps are made return the array

def bubble_sort!(arr)
  loop do
    temp_arr = arr.clone
    arr.each_index do |idx|
      temp1 = arr[idx]
      temp2 = arr[idx + 1]
      if temp2 == nil
        next
      elsif arr[idx] > arr[idx + 1]
        arr[idx] = temp2
        arr[idx + 1] = temp1
      end
    end
  break if temp_arr == arr
  end
  arr
end


p array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

p array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

p array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)