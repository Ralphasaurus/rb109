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
#     -check to see if each sub_array contains all the integers.
#     -initialize a variable (hash?) containing all the correct integers as keys and their values set to 0.
#     -iterate through the sub_arrays and add 1 to the value of the hash for each   integer.
#     -if all integers have a value of 9 by the end then the rows are validated to true.
# => COLUMNS VALID? 
#     -initalize another hash, same.
#     -iterated through each sub_array again and within the iteration we need to check the indices against each other to see if they contain every number...

# => BLOCKS VALID?
#     -

def validSolution(board)
  
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