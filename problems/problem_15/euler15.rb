# Starting in the top left corner of a 2x2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
# 
# How many such routes are there through a 20x20 grid?

## Pascal's formula (2n n) = (2n)!/n!^2
def factorial(n)
	f = 1
	(1..n).each do |i|
		f *= i
	end
	f
end

# Number of vertices
#n = (20**2)
#n = (3**2)
n = ARGV[0].to_i

def pascal(n)
	numerator = factorial(2*n)
	denominator = factorial(n)**2
	return numerator / denominator
end

puts pascal(n).to_i