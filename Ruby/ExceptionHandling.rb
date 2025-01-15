# frozen_string_literal: true

begin
  result = 10/0
rescue ZeroDivisionError => e

  puts "Error: #{e.class}: #{e.message}"
end



begin
  result =10/2

rescue ZeroDivisionError => e
  puts "Error: #{e.class}: #{e.message}"
else
  puts "No Error: #{result}"
ensure
  puts "Excution completed"
end


#  own exception

def check_age(age)
  raise "Age must be a positive number" if age<=0
  "Valid age:#{age}"
end

begin
  check_age(1)
rescue => e
  puts "caught exception: #{e.message}"
ensure
  puts "age verification"
end
