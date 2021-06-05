# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# in my own words: create a program that asks the use for the length and width of a room in meters and then prints out the area of the room in square meters and sq. ft.

# input: user will provide length and width integers
# output: sq meters and sq footage of the rooms.

# steps:
# => initialize a variable called length that uses gets.chomp to define it's value
# => initialize a variable called width that uses gets.chomp to define it's value
# => return the product of those two variables and also return that value converted to footage.

def convert_m_f(length, width)
  area = (length * width) * 10.7639
  area.round(2)
end

puts "Length?..."
length = gets.chomp.to_f
puts "Width?..."
width = gets.chomp.to_f
puts "The total area of the room is: #{length * width}sq.m or #{convert_m_f(length, width)}sq.ft"
