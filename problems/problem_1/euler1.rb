sum = 0
(0..999).each do |n|
	if (n.modulo(3) == 0 || n.modulo(5) == 0)
		sum += n
	end
end
puts sum.to_s