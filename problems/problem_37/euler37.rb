# The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left to right, 
# and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.
# 
# Find the sum of the only eleven primes that are both truncatable from left to right and right to left.
# 
# NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.

require 'prime'

def summation(f)
  sum = 0
  f.each do |n|
    sum += n
  end
  sum
end

def primal(n)
  if n == 2
    return true
  elsif n % 2 == 0
    return false
  else
    return n.prime?
  end
end

def rtrunc(n)
  s = n.to_s
  s = s[0...(s.length-1)]
  s.to_i
end

def ltrunc(n)
  s = n.to_s
  s = s[1..(s.length)]
  s.to_i
end

def left_truncatable(n)
  # Base case
  if n < 10
    return n.prime?
  end

  # Not base case
  if n.prime?
    return left_truncatable(ltrunc(n)) 
  else
    return false
  end
end

def right_truncatable(n)
  # Base case
  if n < 10
    return n.prime?
  end

  # Not base case
  if n.prime?
    return right_truncatable(rtrunc(n))
  else
    return false
  end
end

def truncatable(n)
  left_truncatable(n) && right_truncatable(n)
end

def find_trunc_primes()
  trunc = []
  n = 10
  while trunc.count < 11
    if primal(n)
      if truncatable(n)
        puts "#{n}"
        trunc.push(n)
      end
    end
    n += 1
  end

  summation(trunc)
end