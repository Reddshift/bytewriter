#!/usr/bin/ruby
#


require 'pi_piper'
include PiPiper


puts '---'
puts "flip some switches"
puts '---'

# using pins 4,5,6,12,13,16,17,18
pins  = [4,5,6,12,13,16,17,18]
$bits = [] 

pins.each_with_index do |p,i| 
  $bits[i] = PiPiper::Pin.new(:pin => p, :invert => true)
end

$bits.each {|b| puts "a bit: " + b.read.to_s}

def bitchange pinnumber
  puts "Pin #{pinnumber} changed to #{value}"
  pollpins
end

def pollpins
  puts "can I access these? " + $bits.to_s
  byte = $bits.map{|b| b.read}.join
  puts byte
  byte = Integer ('0b' + byte)

  puts "base 10: " + byte.to_s
  puts "base 2: " + byte.to_s(2)
  puts "Ascii Character: " + byte.chr
end

pollpins

watch :pin => 4 do
  bitchange(4)
end
watch :pin => 5 do
  bitchange(5)
end
watch :pin => 6 do
  bitchange(6)
end
watch :pin => 12 do
  bitchange(12)
end
watch :pin => 13 do
  bitchange(13)
end
watch :pin => 16 do
  bitchange(16)
end
watch :pin => 17 do
  bitchange(17)
end
watch :pin => 18 do
  bitchange(18)
end

PiPiper.wait 





#puts byte


#byte = Integer ('0b' + byte)

#puts "base 10: " + byte.to_s
#puts "base 2: " + byte.to_s(2)
#puts "Ascii Character: " + byte.chr




