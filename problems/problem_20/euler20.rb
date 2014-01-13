# n! means n  (n  1)  ...  3 x 2 x 1
# 
# For example, 10! = 10 x 9 x ... x 3 x 2 x 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
# 
# Find the sum of the digits in the number 100!

def factorial(n)
	f = 1
	(1..n).each do |i|
		f *= i
	end
	f
end

n = ARGV[0].to_i

s = factorial(n).to_s

sum = 0
s.split("").each do |x|
	sum += x.to_i
end

puts sum.to_s