#   https://www.geeksforgeeks.org/ruby-programming-language/#basics

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

#
# # redo operation
#
temp=1
#
for i in 2..20
  if i==10 && temp==1
    puts "redo #{i}"
    temp=0
    redo
  end
  puts i
end

#retry operation

def geeks
  attempt = true
  puts 'hello'
  begin
    p'crash'
    raise
  rescue Exception => e
    if attempt
      attempt = false
    end
    retry
  end
end

# 10.times do |i|
#   begin
#     puts "increasing #{i}"
#     raise if i>2
#   rescue
#     break
#   end
# end

def geeks
  attempt_again = true
  p 'checking'
  begin
    # This is the point where the control flow jumps
    p 'crash'
    raise 'foo'
  rescue Exception => e
    if attempt_again
      attempt_again = false
      # Using retry
      retry
    end
  end
end

geeks()



#begin end
puts "it will"

BEGIN{
  a = 4
  b = 3
  c = a+b
  puts "the value of add a + b is #{c}"
}

