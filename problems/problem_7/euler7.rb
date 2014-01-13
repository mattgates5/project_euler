# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#
# What is the 10 001st prime number?

require 'prime'

n = ARGV[0].to_i
if n.zero?
	abort("Numeric input expected")
end

i=0
p=2
while i < n
	if p.prime?
		puts p.to_s
		i += 1
	end
	p += 1
end