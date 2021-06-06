# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
puts array1

# =>  On line 3 we are  initializing a variable array1 and assigning it the value of an array object. On line 4 initializing another variable array2 and assigning it the value of an empty array object. On line 5 we are iterating through array1 with the each method and passing it a block that appends the value of the block parameter (a local variable to the block) to the empty array. On line 6 we are interating through array1 again and passing it a block that uses the upcase! method on each element in array1 if a condition is met. The condition is if the value starts with (as determined by the start_with? method) a 'C' or an 'S'. They are both going to be mutated because they both have elements that are pointing to the same string object.