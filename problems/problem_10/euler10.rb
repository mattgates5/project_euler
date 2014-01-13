# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# 
# Find the sum of all the primes below two million.


# for each n from 8 to 2*(10^6)


require 'prime'

m = ARGV[0].to_i
if m.zero?
	abort("Numeric input expected")
end

p = 7
sum = 0
while p < m
	if p.prime?
		puts p.to_s
		sum += p
	end
	p += 2
end

sum += (2 + 3 + 5)
puts sum.to_s