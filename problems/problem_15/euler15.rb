def problem15 n
  fact = ->(x) {(1..x).inject {|f,i| f*=i}}
  fact.call(2*n) / (fact.call(n)**2)
end

