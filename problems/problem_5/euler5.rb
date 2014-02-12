require 'prime'

def problem5 maximum
  factors = []

  Prime.each(maximum) do |p|
    x = 0
    x += 1 while (p**x) < maximum
    factors.push(p**(x-1))
  end

  factors.reduce(:*)
end
