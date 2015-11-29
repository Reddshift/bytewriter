#!/usr/bin/ruby
#

puts "ByteWriter...."

name = ARGV[0].to_s

puts name 

name.each_char do |c|
  puts c + ' - ' + c.getbyte(0).to_s(2)
end

name.each_byte do |c|
  puts c.to_s(2)
end



#byte = Integer ('0b' + byte)
#
#puts "base 10: " + byte.to_s
#puts "base 2: " + byte.to_s(2)
#puts "Ascii Character: " + byte.chr




