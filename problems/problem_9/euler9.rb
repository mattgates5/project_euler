# For each integer a, from 3 to 300
# 	For each integer b, from a+1 to 300
# 		c = 1000 - (a + b)
#       if c == pythagorean(a, b)
#       puts a, b, c
#  

maximum = ARGV[0].to_i     

def pythagorean(a, b)
	return Math.sqrt((a**2) + (b**2))
end

3.step(maximum, 1).each do |a|
	(a+1).step(maximum, 1).each do |b|
		c = 1000 - (a + b)
		s = a + b + c
		if c == pythagorean(a, b)
			puts "#{a} + #{b} + #{c} = #{s}"
			abort ("a * b * c = #{a * b * c}")
		end
	end
end

