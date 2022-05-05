def sum_with_for(min, max)
  return -1 if min > max

  sum = 0
  for i in min..max
    sum = sum + i
  end
  return sum
  # CONSTRAINT: you should use a for..end structure
end

def sum_with_while(min, max)
  return -1 if min > max

  i = 0
  while min <= max
    i = i + min
    min += 1
  end
  return i
end
