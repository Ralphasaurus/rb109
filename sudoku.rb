# input: array of sub_arrays
# output: true or false

# Rules:
# each row, column, and block (a 3x3 of the board) must contain every integer 1-9.
# if anywhere on the board contains a 0 then return false because that represents an empty cell.

# Steps:
# => first check to see if the board is filled out completely
#     -iterate through each sub_array and see if it include?(0)
#     -if it does return false, else continue with the validation
# => ROWS VALID?
#   -initialize a variable array and assign it a complete row 1-9
#   -iterate through each sub_array and use sort method to compare it to the valid array variable.
#   -if they are equal rows are valid.
# => COLUMNS VALID? 
#     -add all the correct indexes to a current array variable and use sort method again to compare it to the valid array variable.
#     -if they are equal columns are valid.
# => BLOCKS VALID?
#     -we need to create the blocks as arrays of 9 integers, sorted, and then compare them against a valid array. Then store the results in a result array like before... ***the hard part is creating the blocks as arrays.***
# => create blocks as arrays...
#   - maybe iterate through the board then add certain indices to a hash
#   - then put in a clause that says if the hash value.size == 9
#   - increment the name/key of the hash by 3. This will turn key 1 into 4, key 2 into 5, key 3 into 6.... and once it happens again it will jump to the next row of blocks...


def board_complete?(b)
  result = b.select do |sub_array|
    sub_array.any?(0)
  end
  result.empty?
end

def row_valid?(b)
  result = []
  valid_array = [1,2,3,4,5,6,7,8,9]
  b.each do |sub_array|
    if sub_array.sort == valid_array
      result << true
    else result << false
    end
  end
  result.all?(true)
end

def column_valid?(b)
  result = []
  valid_array = [1,2,3,4,5,6,7,8,9]
  9.times do |i|
    current_array = []
    b.each do |sub_array|
      current_array << sub_array[i]
    end
    result << (current_array.sort == valid_array)
  end
  result.all?(true)
end

def block_valid?(b)
  result_arr = []
  result = {one: [], two: [], three: [], four: [], five: [], six: [], seven: [], eight: [], nine: []}
  current_array = []
  valid_array = [1,2,3,4,5,6,7,8,9]
  b.each do |sub_array|
    if result[:one].size < 9
      result[:one] += sub_array[0..2]
      result[:two] += sub_array[3..5]
      result[:three] += sub_array[6..8]
    elsif result[:four].size < 9
      result[:four] += sub_array[0..2]
      result[:five] += sub_array[3..5]
      result[:six] += sub_array[6..8]
    elsif result[:seven].size < 9
      result[:seven] += sub_array[0..2]
      result[:eight] += sub_array[3..5]
      result[:nine] += sub_array[6..8]
    end
  end
  result.each_pair do |k, v|
    result_arr << (v.sort == valid_array)
  end
  result_arr.all?(true)
end

def validSolution(board)
  result = []
  result << board_complete?(board)
  result << row_valid?(board)
  result << column_valid?(board)
  result << block_valid?(board)
  result.all?(true)
end

p validSolution([
  [5, 3, 4, 6, 7, 8, 9, 1, 2],
  [6, 7, 2, 1, 9, 5, 3, 4, 8],
  [1, 9, 8, 3, 4, 2, 5, 6, 7],
  [8, 5, 9, 7, 6, 1, 4, 2, 3],
  [4, 2, 6, 8, 5, 3, 7, 9, 1],
  [7, 1, 3, 9, 2, 4, 8, 5, 6],
  [9, 6, 1, 5, 3, 7, 2, 8, 4],
  [2, 8, 7, 4, 1, 9, 6, 3, 5],
  [3, 4, 5, 2, 8, 6, 1, 7, 9]
]) == true