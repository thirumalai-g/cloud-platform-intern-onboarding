# frozen_string_literal: true

BEGIN{
  a=5
  puts "Begin done value"
}

END{
  puts "After begin done value is #{a}"
}




# global variable
$va="iru"
def f
  puts "th"+$va;
end
f()

class Customer
  # class variable
  @@no_of_customers = 0
  def initialize(name, addr,id)
    # instance variable
    @name = name
    @addr = addr
    @id = id
    @@no_of_customers += 1
  end

  def display_details()
    puts "Name: " + @name
    puts "Id: " + @id
    puts "Address:  " + @addr
  end
  def self.no_of_customers
    return @@no_of_customers
  end
end

puts "Enter name of customer 1"
# Local variale
custname = gets.chomp

c1=Customer.new(custname,"india","123456")
c2=Customer.new("Jane","usa","654321")
c3=Customer.new("krishna","siruuliyur","848323")

c1.display_details

