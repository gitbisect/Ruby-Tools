#!/usr/bin/ruby -w

# List the files in a directory using ruby
# Created by John Varghese on 11/10/2011
# Licensed under Creative Commons Attribution License
# Contact me at http://www.johnvarghese.com

Dir.foreach(".") do  #replace . with a path if you have one
	|f|
	puts f
end