# reverse an array without using the built-in reverse method

# input: array
# output: array reversed


# def reverse(array)
#   new_arr = []
#   array.each { |element| new_arr.prepend(element) }
#   new_arr
# end

# # what if we wanted to mutate the original array?

# 1. remove the last element from the array
# 2. add it to index 0
# 3. remove current last element from the array
# 4. add it to array index 1
# 5. remove current last element from the array
# 6. add it to array index 2
# 7. until we have iterated through the entire array x times (where x is == array.size)


def reverse(array)
  new_arr = []
  until array.empty? do
    new_arr << array.pop
  end
  until new_arr.empty? do
    array.prepend(new_arr.pop)
  end
  array
end

p array = [1,2,3,4,5,6,7,8,9]
p reverse(array) == [9,8,7,6,5,4,3,2,1]
p array





