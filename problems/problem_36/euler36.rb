# The decimal number, 585 = 1001001001(binary), is palindromic in both bases.
# 
# Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.
# 
# (Please note that the palindromic number, in either base, may not include leading zeros.)

def palindrome(s)
  s == s.reverse
end

def double_base_palindrome(n)
  palindrome(n.to_s) && palindrome(n.to_s(2))
end

def summation(f)
  sum = 0
  f.each do |n|
    sum += n
  end
  sum
end

def find_sum_dbp(limit)
  l = []
  (0..limit).each do |n|
    if double_base_palindrome(n)
      l.push(n)
    end
  end

  summation(l)
end
