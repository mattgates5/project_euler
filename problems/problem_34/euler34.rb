# 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.
# 
# Find the sum of all numbers which are equal to the sum of the factorial of their digits.
# 
# Note: as 1! = 1 and 2! = 2 are not sums they are not included.

def factorial(n)
  f = 1
  (1..n).each do |i|
    f *= i
  end
  f
end

def digit_factorial(n)
  number = n.to_s
  sum = 0
  number.split("").each do |s|
    sum += factorial(s.to_i)
  end
  sum
end

sum = 0
(3..100000).each do |n|
  if n == digit_factorial(n)
    sum += n
  end
end

puts sum