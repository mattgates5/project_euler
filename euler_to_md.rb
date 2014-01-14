require 'nokogiri'
require 'open-uri'

number = ARGV[0].to_i
filename = ARGV[1] unless ARGV[1].nil?
exit(1) if number == 0
euler = "http://projecteuler.net/problem=" + "#{number}"

page = Nokogiri::HTML(open(euler))

title = page.css('div#content h2').text
problem = page.css('div#content div.info h3').text
content = page.css('div#content div.problem_content').text.gsub(/\r/, '')

output = "## #{title}\n" + "### #{problem}\n" + content

filename = "problem#{number}.md" if filename.nil?
puts filename
File.open(filename, 'w') { |f| f.write(output) }
