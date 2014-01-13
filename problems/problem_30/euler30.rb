# Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:
# 
# 1634 = 1^4 + 6^4 + 3^4 + 4^4
# 8208 = 8^4 + 2^4 + 0^4 + 8^4
# 9474 = 9^4 + 4^4 + 7^4 + 4^4
# As 1 = 1^4 is not a sum it is not included.
# 
# The sum of these numbers is 1634 + 8208 + 9474 = 19316.
# 
# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

def powersum(n, p)
  sum = 0
  n.to_s.split("").each do |x|
    sum += (x.to_i**p)
  end
  sum
end

numbers = []
(10**6).times do |n|
  if n == powersum(n, 5)
    puts n.to_s
    numbers.push(n)
  end
end

sum = 0
numbers.each do |n|
  sum += n
end

sum -= 1

puts sum.to_s