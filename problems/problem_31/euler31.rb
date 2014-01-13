# In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:
# 
# 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
# It is possible to make £2 in the following way:
# 
# 1x£1 + 1x50p + 2x20p + 1x5p + 1x2p + 3x1p
# How many different ways can £2 be made using any number of coins?

value = ARGV[0].to_i

coins, ways = [1, 2, 5, 10, 20, 50, 100, 200], [1]
coins.each do |p|


1p
|1|2|3|4|5|
|1|1|1|1|1|

2p
|1|2|3|4|5|
|1|2|2|2|2|



1p [1x1] = 1
2p [2x1, 1x2] = 2
3p [3x1, 1x2+1x1] = 2
4p [4x1, 1x2+2x1, 2x2] = 3
5p [5x1, 1x2+3x1, 2x2+1x1, 1x5] = 4