# Project Euler Solutions

Solutions in Ruby for the problems presented at [Project Euler](http://projecteuler.net/). 

I'm in no way endorsing these as viable solutions, but rather a way for me to explore Ruby and to find ways of designing and implementing algorithms.

### euler\_to\_md.rb
There is a little script in the top folder that converts a problem's description into a Markdown file. The syntax is as such:

    ruby euler_to_md.rb <problem number> [filename]
    
It requires the problem number, as in `1`, `22`, `144`, etc. By default it will spit out a file called `problemX.md` in the same directory. If you specify a filename it will output to that instead. 