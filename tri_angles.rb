# A triangle is classified as follows:

# right:  One angle of the triangle is a right angle (90 degrees)
# acute:  All 3 angles of the triangle are less than 90 degrees
# obtuse: One angle is greater than 90 degrees.
# To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

# You may assume integer valued angles so you don't have to worry about floating point errors. You may also assume that the arguments are specified in degrees.

# In my own words: define a method that takes 3 arguments that represent the angles of a triangle and returns a symbol. Either :right, :acute, :obtuse, or :invalid.
# => To be considered valid: the sum of the angles must be exactly 180. All angles must be greater than 0.

# input: 3 integers
# output: a symbol

# Steps:
# => first check to see if we have a valid triangle.
# =>    do this by seeing if sum == 180 and all are != 0
# => then see what type we have
# =>    one side == 90, :right
# =>    one side > 90, :obtuse
# =>    all sides < 90, :acute

def valid?(arr)
  arr.sum == 180 && arr.all? { |side| side != 0 }
end
def triangle(x, y, z)
  arr = [x, y, z]
  if valid?(arr)
    if arr.all? { |side| side < 90 }
      :acute
    elsif arr.any? { |side| side > 90 }
      :obtuse
    else :right
    end
  else :invalid
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid