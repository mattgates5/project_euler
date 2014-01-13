# Euler published the remarkable quadratic formula:
# 
# n² + n + 41
# 
# It turns out that the formula will produce 40 primes for the consecutive values n = 0 to 39. 
# However, when n = 40, 402 + 40 + 41 = 40(40 + 1) + 41 is divisible by 41, and certainly when n = 41, 41² + 41 + 41 is clearly divisible by 41.
# 
# Using computers, the incredible formula  n²  79n + 1601 was discovered, which produces 80 primes for the consecutive values n = 0 to 79. 
# The product of the coefficients, 79 and 1601, is 126479.
# 
# Considering quadratics of the form:
# 
# n² + an + b, where |a|  1000 and |b|  1000
# 
# where |n| is the modulus/absolute value of n
# e.g. |11| = 11 and |4| = 4
# Find the product of the coefficients, a and b, for the quadratic expression that produces the maximum number of primes for consecutive values of n, starting with n = 0.

require 'prime'

def qexp(n, a, b)
	return ((n**2) + (a*n) + b)
end

def count_consecutive_primes(a, b)
	count = 0
	n = 0
	while true
		r = qexp(n, a, b)
		if !r.prime?
			break
		end
		count += 1
		n += 1
	end
	return count
end


def find_maxprime_coefficient(limit)
	result = [0,0,0]
	ubound = limit - 1
	lbound = ubound * -1
	lbound.step(ubound, 1).each do |a|
		lbound.step(ubound, 1).each do |b|
			count = count_consecutive_primes(a, b)
			print "\r\e n²+#{a}n+#{b}\t#{count}"
			if count > result[0]
				result = [count, a, b]
			end
		end
	end
	print "\n"
	return result
end

l = ARGV[0].to_i
answer = find_maxprime_coefficient(l)
a = answer[1]
b = answer[2]
primes = answer[0]
puts "n²+#{a}n+#{b} produced #{primes} consecutive primes."
puts "The product of a(#{a}) and b(#{b}) is #{a*b}"