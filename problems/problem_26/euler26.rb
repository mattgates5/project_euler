# A unit fraction contains 1 in the numerator. The decimal representation of the unit fractions with denominators 2 to 10 are given:
# 
# 1/2  =   0.5
# 1/3  =   0.(3)
# 1/4  =   0.25
# 1/5  =   0.2
# 1/6  =   0.1(6)
# 1/7  =   0.(142857)
# 1/8  =   0.125
# 1/9  =   0.(1)
# 1/10  =   0.1
# Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be seen that 1/7 has a 6-digit recurring cycle.
# 
# Find the value of d < 1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.

def cycle(denominator)
  numerator = 1
  i = 0
  rems = Array.new(denominator)
  while (rems[numerator].nil? && !numerator.zero?)
    rems[numerator] = i
    numerator *= 10
    numerator %= denominator
    i += 1
  end
  return i
end

def recurring_cycle(limit)
  largest = [0,0] #n, c
  limit.step(1, -1).each do |n|
    c = cycle(n)
    if c > largest[1]
      largest[1] = c
      largest[0] = n
    end
  end
  return largest
end

l = ARGV[0].to_i
result = recurring_cycle(l)
puts "Largest recurring cycle is for 1/#{result[0]} which is #{result[1]}"