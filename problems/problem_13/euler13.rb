# Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.
#
# c.f. euler13_data file
#

data = File.open("euler13_data")

bigsum = 0
data.each do |line|
  bigsum += line.to_i
end

bigstr = bigsum.to_s
str = bigstr[0...10]

puts str