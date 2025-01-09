# frozen_string_literal: true

# num and float with fixed size
distance = 20
time = 9.0

speed=distance/time

puts "the speed of cycle is #{'%.4f'%speed} km/h"

# boolean

puts "#{speed>time}"

puts "#{speed<distance}"

# string

puts 'substution not allow in single quote #{speed}'

puts "substution and backslash alow in double quotes #{'%.3f'%speed}"

#hashes

hsh={"red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f}

hsh.each do |k,v|
  puts "key #{k}: #{v}"
end

# arrray

arr1=["hello","world"]

# used join printing in one line
#
puts arr1.join(' ')

arr=["fred",10,3.24,["hello","world"]]

arr.each do |i|
  puts "#{i}"

end


#  Symbols


hsh1=color={:red => 0xf00, "green" => 0x0f0, "blue" => 0x00f}

puts hsh1[:red]
