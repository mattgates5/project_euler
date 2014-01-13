# The sum of the squares of the first ten natural numbers is,
# 
# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,
# 
# (1 + 2 + ... + 10)^2 = 55^2 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.
# 
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_squares(maximum)
  sum = 0
  1.step(maximum, 1).each do |n|
    sum += (n**2)
  end
  return sum
end

def square_sums(maximum)
  sum = 0
  1.step(maximum, 1).each do |n|
    sum += n
  end
  return (sum**2)
end

n = ARGV[0].to_i

sums = sum_squares(n)
sqrs = square_sums(n)

puts (sqrs - sums).to_s