# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
#
# If the maximum of the range of evenly divisible numbers is 20      maximum = 20
# List all prime number such that they are less than maximum       primes = []
# For each prime number(p) in the list(primes), find the greatest power (x) for which the prime will still be less than maximum   factors = []
#   while p^x < maximum, x++
#   push (p^(x-1)) to factors
# Multiply each of the values of factors into a product
# Return product
require "prime"

# Strip composites from a range
# return array of primes
def get_primes(range)
  p = []
  range.each do |x|
    if x.prime?
      p.push(x)
    end
  end
  return p
end

# Check for option or bust
maximum = ARGV[0].to_i
if maximum.zero?
  abort("No maximumimum specified")
end

primes = get_primes(2..maximum)

factors = []
primes.each do |p|
  x = 0
  x +=1 while (p**x) < maximum
  factors.push(p**(x - 1))
end

product = 1
factors.each do |f|
  product *= f
end

puts product.to_s