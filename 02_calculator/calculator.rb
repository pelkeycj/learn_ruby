#write your code here

def add(num1, num2)
  return num1 + num2
end

def subtract(num1, num2)
  return num1 - num2
end

def sum(nums)
  sum = 0
  nums.each do |i|
    sum += i
  end

  return sum
end

def multiply(nums)
  product = 1

  nums.each do |i|
    product *= i
  end

  return product
end

def power(base, exp)
  if exp == 0
    return 1
  end

  return base * power(base, exp - 1)
end

def factorial(n)
  if n == 0
    return 1
  end

  return n * factorial(n-1)
end
