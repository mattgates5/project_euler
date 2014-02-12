# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome? n
  (n.to_s == n.to_s.reverse)
end

def largest_palindrome_product(digits)
  return [0,0,0] if digits < 2
  u = 10**digits - 1
  l = 10**(digits - 1)

  (u**2).downto(l**2).each do |x|
    if palindrome?(x)
      u.downto(l).each do |y|
        if x%y == 0
          z = x/y
          return [x, y, z] if y.to_s.length == z.to_s.length
        end
      end
    end
  end
end

p largest_palindrome_product 3
