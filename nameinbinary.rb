#!/usr/bin/ruby
#

# Letting this run indefinitely to not have to worry about starting it up for each child
while(true)
  # Welcome the user
  puts "Welcome to ByteWriter...."

  # Pause for effect
  puts ''
  sleep(1)
  puts "ByteWriter is a program that will convert your name to Binary code!"

  # Pause for effect
  sleep(1)
  # Ask for input
  puts "What is your name?"
  name = gets.chomp
  while name.length == 0
    puts "Did you think you're going to trick me?! Enter your name."
    name = gets.chomp
  end

  # Pause for effect
  puts ''
  sleep(1)
  puts "This is each letter of your name in Binary:"

  name.each_char do |c|
    puts c + ' - ' + c.getbyte(0).to_s(2)
  end

  # Pause for effect
  puts ''
  sleep(1)
  puts "This is your full name in Binary:"

  name.each_byte do |c|
    print c.to_s(2)
  end

  # Pause for effect
  puts ''
  puts ''
  sleep(1)
  # Ask if user wants to play again
  puts "Do you want to try again?"
  puts "Type 'Yes' or 'No'"
  exit = gets.chomp

  if exit.downcase == 'no'
    puts "Goodbye!"
    sleep(1)
    system "clear" or system "cls"
  elsif exit.downcase == 'exit'
    break
  else
    puts ''
  end
end




#byte = Integer ('0b' + byte)
#
#puts "base 10: " + byte.to_s
#puts "base 2: " + byte.to_s(2)
#puts "Ascii Character: " + byte.chr




