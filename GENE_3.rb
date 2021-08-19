# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in. Additionally, if the number is negative, return 0 (for languages that do have them).

# Note: If the number is a multiple of both 3 and 5, only count it once.

# Problem:
# => input: an integer
# => output: an integer that represents the sum of all multiples of 3 or 5 below the number passed in as an argument.
# we need to create a list of all available multiples
# perhaps use union | to merge the lists (3 and 5) and remove duplicates
# then the sum method should work to return the right integer object

# Data Structures and Algo's
# initialize 2 separate array's to hold the 3's and 5's
# until x > int
# multi_3 << x
# x += 3
# end
# Same algo for 5's
# (multi_3 | multi_5).sum

def solution(int)
  multiples_3 = []
  multiples_5 = []
  threes = 3
  fives = 5
  
  until threes >= int
    multiples_3 << threes
    threes += 3
  end
  until fives >= int
    multiples_5 << fives
    fives += 5
  end
  
  (multiples_3 | multiples_5).sum
end






p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168



