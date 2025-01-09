# frozen_string_literal: true

mark=91

if mark < 50
  puts "student is failed"
elsif mark>=50 && mark<70
  puts "student secured average grade"
elsif mark>=70 && mark<90
  puts "student secured good grade"
else
  puts "student secured best grade"
end

# ternary operator

puts mark>=90?"student pass":"student failed in exam"


#Loops

x=4
while x>=0
  puts "Timer reducing:#{x}"
  x-=1
end


for i in 1..5 do
  puts "Timer increasing:#{i}"
end

