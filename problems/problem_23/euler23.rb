# A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. 
# For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.
# 
# A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.
# 
# As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. 
# By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. 
# However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be 
# expressed as the sum of two abundant numbers is less than this limit.
# 
# Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

def proper_factors(n)
	f = []
	1.step((n/2).to_i, 1).each do |x|
		if n % x == 0
			f.push(x)
		end
	end
	f.sort
end

def summation(f)
	sum = 0
	f.each do |n|
		sum += n
	end
	sum
end

def abundant?(n)
	summation(proper_factors(n)) > n
end

def gen_abundant_numbers(limit)
	ab = []
	puts "generating abundant numbers"
	(1..limit).each do |n|
		print "\r#{n}"
		if abundant?(n)
			ab.push(n)
		end
	end
	print "\r#{ab.length} numbers found\n"
	return ab
end

def gen_ab_sums(abn, limit)
	sums = []
	i = 0
	while i < abn.length
		j = i
		while j < abn.length
			sum = abn[i] + abn[j]
			if sum > limit
				break
			end
			sums.push(sum)
			j += 1
		end
		i += 1
	end
	return sums.sort.uniq
end

def sum_non_abundant(sums, limit)
	sum = 0
	(1..limit).each do |n|
		if sums.index(n).nil?
			sum += n
		end
	end
	return sum
end

limit = 28123
ab = gen_abundant_numbers(limit)
sums = gen_ab_sums(ab, limit)
sum = sum_non_abundant(sums, limit)
puts sum.to_s
#puts gen_sum(ab, limit).to_s


