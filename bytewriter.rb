#!/usr/bin/ruby
#

puts "ByteWriter...."

byte = ARGV[0].to_s

puts byte

byte = Integer ('0b' + byte)

puts "base 10: " + byte.to_s
puts "base 2: " + byte.to_s(2)
puts "Ascii Character: " + byte.chr




