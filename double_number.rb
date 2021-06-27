def twice(num)
  array = num.to_s.chars
  first = []
  second = []
  until array.empty? do
    first << array.shift
    second << array.pop
  end
  unless first == second.reverse
    return num * 2
  end
  num
end


p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10