# The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.
# 
# There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.
# 
# How many circular primes are there below one million?

require 'prime'

def rotate(n)
  n = n[1..(n.length)] + n[0]
  return n
end

def rotations(n)
  l = []
  len = n.to_s.length
  (0...len).each do |i|
    n = rotate(n)
    l.push(n)
  end
  l.sort
end

def primal(n)
  if n == 2
    return true
  end

  if n % 2 == 0
    return false
  end

  if n.prime?
    return true
  end
end

# For each number from 0 to 1M inclusive
#  if the number is prime
#    scan the rotations for primality
#    if all rotations are prime then post to the array

def circular_primes(limit, debug)
  circular = []
  (0..(limit)).each do |n|
    #if n.prime?
    if primal(n)
      r = rotations(n.to_s)
      rp = true
      r.each do |rn|
        if !rn.to_i.prime?
          rp = false
          break
        end
      end
      if rp
        circular.push(n)
        if debug
          print "\r#{n}"
        end
      end
    end
  end
  circular
end