def problem16 n, x
  (n**x).to_s.split("").map(&:to_i).reduce(:+)
end

p problem16 2, 1000
