# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome(n)
	x = n.to_s
	return (x == x.reverse)
end

def largest_palindrome_product(digits)
	u = (10 ** (digits)) - 1
	l = (10 ** (digits - 1))
	upper_bound = u**2
	lower_bound = l**2

	products = upper_bound.step(lower_bound, -1)
	factors = u.step(l, -1)

	p = []

	products.each do |x|
		if palindrome(x)
			factors.each do |y|
				if (x % y == 0)
					z = x / y
					if y.to_s.length == z.to_s.length
						p = [x, y, z]
						return p
					end
				end
			end
		end
	end
end