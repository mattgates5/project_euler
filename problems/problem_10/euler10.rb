require 'prime'

def problem10 m
  Prime.each(m).reduce(:+)
end

p problem10 (2*10**6)
