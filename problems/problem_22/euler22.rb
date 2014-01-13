# Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. 
# Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.
# 
# For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. 
# 
# So, COLIN would obtain a score of 938  53 = 49714.
# 
# What is the total of all the name scores in the file?

def string_score(string)
	score = 0
	string.split('').each do |n|
		score += n.ord - 64
	end
	score
end

names = File.open('names.txt').read.gsub(/\"/,'').split(',').sort

score = 0
names.each do |n|
	score += (names.index(n)+1) * string_score(n)
end

puts score.to_s