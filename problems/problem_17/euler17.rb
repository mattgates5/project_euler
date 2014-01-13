# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
# 
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
# 
# 
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. 
# The use of "and" when writing out numbers is in compliance with British usage.

require 'linguistics'

Linguistics.use( :en )

def letter_count(str)
  return str.gsub(/[\s+|\W]/,"").length
end

sum = 0
(1..1000).each do |n|
  name = n.en.numwords
  puts "#{name}"
  sum += letter_count(name)
end

puts sum.to_s