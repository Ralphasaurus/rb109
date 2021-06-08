# Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

# Ruby's Date class may be helpful here.
# Look at how to initialize a Date object
# Look at the friday? method

require 'date'
def friday_13th(year)
unlucky = 0
date = Date.new(year)
until date == (Date.new(year + 1)) do
  date += 1
  if date.friday? && date.mday == 13
    unlucky += 1
  end
end
unlucky
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2