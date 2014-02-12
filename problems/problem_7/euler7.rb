require 'prime'

def problem7 n
  Prime.first(n).last
end

p problem7 10001
