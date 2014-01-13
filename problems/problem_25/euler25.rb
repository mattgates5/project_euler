# What is the first term in the Fibonacci sequence to contain 1000 digits?

curr = 0
succ = 1
i = 0

while curr.to_s.length < 1000
  curr, succ = succ, curr + succ
  i += 1
end

puts "F#{i} is #{curr} at #{curr.to_s.length}"
