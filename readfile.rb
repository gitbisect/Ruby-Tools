#!/usr/bin/ruby -w

# Read a file using ruby
# Created by John Varghese on 11/10/2011
# Licensed under Creative Commons Attribution License
# Contact me at http://www.johnvarghese.com

infile = ARGV[0]

# If an input file is not specified, read "this" file
infile = infile || "#{$0}"

begin
	filehandle = File.new(infile, "r")
	while (line = filehandle.gets)
		puts "#{line}"
	end
	filehandle.close

rescue => errmsg
	puts "This exception occured when reading the file => #{errmsg}"
	errmsg
end
