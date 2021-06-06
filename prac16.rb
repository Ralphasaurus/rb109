# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

# in my own words: create a program that calculates the tip based on the amount of the bill and the percentage tip desired.

# input: ask the user for the bill amount and the percentage tip.
# output: two strings that say the tip amount and total bill with tip included.

# steps:
# => prompt user for bill, store in variable bill.
# => prompt user for the tip percentage, store in variable tip_percentage
# => initialize a variable called tip_total and define it as a method that takes two arguments, the bill and tip percentage.
# => puts that variable with the string
# => initialize another variable called bill_total and define it as bill + tip_total
# => puts that variable with the string.

def calc_tip(bill, tip)
  (bill * (tip / 100))
end

puts "What is the bill?"
bill = gets.chop.to_f
puts "How much do you want to tip?"
tip_percentage = gets.chomp.to_f
tip_total = (calc_tip(bill, tip_percentage)).round(2)
bill_total = (tip_total + bill).round(2)
puts "The tip is: $#{tip_total}"
puts "The total amout due is: $#{bill_total}"

# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0