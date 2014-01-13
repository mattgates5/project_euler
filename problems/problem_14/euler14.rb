# The following iterative sequence is defined for the set of positive integers:
# 
# n->n/2 (n is even)
# n->3n + 1 (n is odd)
# 
# Using the rule above and starting with 13, we generate the following sequence:
# 
# 13->40->20->10->5->16->8->4->2->1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms.
# Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
# 
# Which starting number, under one million, produces the longest chain?
# 
# NOTE: Once the chain starts the terms are allowed to go above one million.

# n = 1
# limit = 1*(10^6)
# while n < limit
# find the length of the collatz chain of n...
# longest_n = 1
# chain = 0
# 
# 	collatz chain (starting number n)
# 		
# 		while n > 1
# 			if n is odd
# 				n = n*3 + 1
# 			else if n is even
# 				n = n/2
# 			end if
# 			chain++

limit = ARGV[0].to_i

i = 1
#limit = (10**6)
longest_chain = 0
longest_start = 1
while i < limit
	n = i
	chain = 1
	#print "#{i}"
	while n > 1
		if n.even?
			n = n / 2
		else
			n = (n * 3) + 1
		end
		#print "->#{n}"
		chain += 1
	end
	if chain > longest_chain
		longest_chain = chain
		longest_start = i
	end
	i += 1
	#puts "#{i}\tchain: #{chain}"
end

puts "Longest starting n: #{longest_start}\tchain:#{longest_chain}"