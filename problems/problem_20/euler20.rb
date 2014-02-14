def problem20 digits
  fact = ->(x) {(1..x).inject {|sum,n| sum *= n}}
  (fact.call(digits)).to_s.split("").map(&:to_i).reduce(:+)
end
