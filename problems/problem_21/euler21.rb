# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a != b, then a and b are an amicable pair and each of a and b are called amicable numbers.
# 
# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. 
# The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
# 
# Evaluate the sum of all the amicable numbers under 10000.

# def get_factors(n)
# 	f = []
# 	f.push(1)
# 	f.push(220)
# 	2.step(Math.sqrt(n).to_i, 1).each do |x|
# 		if (n % x == 0)
# 			f.push(x)
# 		end
# 	end
# 	return f.sort
# end

def proper_factors(n)
	f = []
	1.step((n/2).to_i, 1).each do |x|
		if n % x == 0
			f.push(x)
		end
	end
	return f.sort
end

def summation(f)
	sum = 0
	f.each do |n|
		sum += n
	end
	sum
end

def d(n)
	return summation(proper_factors(n))
end

limit = ARGV[0].to_i

amicable = []
1.step(limit, 1).each do |a|
	b = d(a)
	if (d(b) == a) && (a != b)
		amicable.push(a)
	end
end

puts amicable
puts summation(amicable).to_s

