# A triangle is classified as follows:

# equilateral -All 3 sides are of equal length
# isosceles   -2 sides are of equal length, while the 3rd is different
# scalene     -All 3 sides are of different length
# To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

# in my own words:
# define a method that takes 3 arguments, integers. And returns which type of triangle it is. To be a valid triangle, the sum of the lengths of the 2 shortest sides must be greater than the longest side. All sides must have a length greater than 0.

# About the problem:
# => valid triangles have a sum of the two shortest sides greater than the longest.
# => All must be greater than 0.

# Input: 3 integers
# Output: one of 3 symbols, :equilateral, :isoceles, or :scalene

# Steps:
# => first initialize an array that contains the arguments as elements, sorted
# => check if valid:
#       - all must not be 0
#       - index[0] + index[1] > index[2] must be true
#       - if neither of these conditions is met return :invalid
# => use a case statement to determine which kind it is and return that

def triangle(x, y, z)
  array = [x, y, z].sort
  if (array.all? { |side| side > 0 }) && array[0..1].sum > array[2]
    if array.all?(array[0]) 
      :equilateral
    elsif (array[0] == array[1]) || (array[1] == array[2])
      :isosceles
    else :scalene
    end
  else :invalid
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid