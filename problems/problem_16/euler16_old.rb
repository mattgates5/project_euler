# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# 
# What is the sum of the digits of the number 2^1000?

power = ARGV[0].to_i

sum = 0
((2**power).to_s.split("")).each do |i|
  sum += i.to_i
end

puts sum.to_s