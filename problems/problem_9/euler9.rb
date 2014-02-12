def problem9 m
  pyth = ->(a,b) {Math.sqrt a**2 + b**2}

  3.upto(m) do |a|
    (a+1).upto(m) do |b|
      c = m - (a + b)
      return (a*b*c) if c == pyth.call(a,b)
    end
  end

end
