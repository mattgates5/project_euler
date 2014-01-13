# You are given the following information, but you may prefer to do some research for yourself.
# 
# 1 Jan 1900 was a Monday.
# Thirty days has September,
# April, June and November.
# All the rest have thirty-one,
# Saving February alone,
# Which has twenty-eight, rain or shine.
# And on leap years, twenty-nine.
# A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

epoch = 1 # Monday 1 Jan 1900
# 0+6 = sunday
year = 1900
sundays = 0
first_sundays = 0
weekday = 1

def feb_in_leap(year)
	# if year is a century
	if year % 100 == 0
		# if year is divisible by 400
		if year % 400 == 0
			return 29
		else
			return 28
		end
	end

	# if year isn't a century,
	#  but a leap year nontheless
	if year % 4 == 0
		return 29
	end
	return 28
end

while year <= 2000
	# Array of Number of Days of Months
	months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

	# Leap Year changes days in February
	months[1] = feb_in_leap(year)

	# Count each month
	m = 1
	months.each do |month|
		day = 1
		while day <= month
			if weekday == 7
				puts "#{year}/#{m}/#{day}\tepoch: #{epoch}"
				sundays += 1
				if (year > 1900 && day == 1)
					first_sundays += 1
				end
				weekday = 1
			else
				weekday += 1
			end
			epoch += 1
			day += 1
		end
		m += 1
	end

	year += 1
end

print "Sundays: #{sundays}\n"
print "First Sundays: #{first_sundays}\n"

