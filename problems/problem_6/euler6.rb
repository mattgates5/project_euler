def problem6 n
  sqrs = (1..n).reduce {|sum,n| sum += n**2 }
  sums = (1..n).reduce(:+)**2

  sums - sqrs
end

p problem6 100
