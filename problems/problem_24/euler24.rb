# A permutation is an ordered arrangement of objects. 
# For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. 
# If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. 
# The lexicographic permutations of 0, 1 and 2 are:
# 
# 012   021   102   120   201   210
# 
# What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

# solution: http://www.mathblog.dk/project-euler-24-millionth-lexicographic-permutation/

def factorial(n)
  f = 1
  (1..n).each do |i|
    f *= i
  end
  f
end

def permutation(string, n)
  perm = ""
  len = string.length
  numbers = string.split("").sort
  remain = n - 1
  (1...len).each do |i|
    fact = factorial(len - i)
    j = remain / fact
    remain %= fact
    perm += numbers[j].to_s
    numbers.delete_at(j)
    if remain == 0
      break
    end
  end

  numbers.each do |x|
    perm += x.to_s
  end

  return perm
end

def print_perms(string)
  f = factorial(string.length)
  (1..f).each do |n|
    puts permutation(string, n)
  end
end

puts permutation("0123456789", (10**6))

