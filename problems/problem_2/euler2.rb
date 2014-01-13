f = [1,2]

while f.last < 4000000
  f.push(f[-1] + f[-2])
end

sum = 0
f.each do |n|
  if n.modulo(2) == 0
    sum += n
  end
end

puts sum.to_s