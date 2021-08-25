def pairs(arr)
  p arr
  result = Hash.new(0)
  arr.each do |i|
    result[i] += 1
  end
  p result
  result.select do |k, v|
    v == 2
  end.keys.count
end

p pairs([1, 2, 5, 6, 5, 2]) == 2