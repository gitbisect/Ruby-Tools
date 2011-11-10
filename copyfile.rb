#!/usr/bin/ruby -w

# Copy a file using ruby
# Created by John Varghese on 11/10/2011
# Licensed under Creative Commons Attribution License
# Contact me at http://www.johnvarghese.com

require 'fileutils'

srcfile = ARGV[0]
destfile = ARGV[1]

#if either src or dest is not specified, email the admin
if !srcfile 
	puts "Source file not specified"
	exit
end
if !destfile 
	puts "Destination file not specified"
	exit
end

begin
	FileUtils.cp  srcfile,  destfile
rescue => errmsg
	puts "Encountered this error when copying #{srcfile} to #{destfile}. => #{errmsg} "
	puts "Unable to proceed."
	exit
end

Dir.foreach(".") do
	|f|
	puts f
end