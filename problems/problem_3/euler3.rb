# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

# Input number (n)
# Beginning with 2, look for prime numbers which are factors(f) of n.
#   when a factor(f) is found, number(n) will be itself divided by the prime factor
#   if number is zero, than break the search
#   otherwise, from one more than the last factor found, continue...
# Return the last factor found

require 'prime'

#f = 0
#2.step(n,1).each do |x|
#  if (n == 1)
#    break
#  end
#  if (x.prime? && (n % x == 0))
#    f = x
#    n /= x
#    #puts n.to_s
#  end
#end

#puts f.to_s


def problem3 n
  2.step(n,1).each do |x|
    return x-1 if n == 1
    n /= x if x.prime? && (n % x == 0)
  end
end

p problem3 600851475143
