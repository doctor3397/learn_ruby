def add(a, b)
  return a + b
end

def subtract(a, b)
  return a - b
end

def sum(arr)
  total = 0
  arr.each do |a|
    total = total + a
  end
  return total
end

def multiply(arr)
  total = 1
  arr.each do |a|
    total = total * a
  end
  return total
end

def factorial(n)
  total = 1
  (1..n).each do |i|
    total = total * i
  end
  return total
end
