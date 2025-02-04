# https://www.geeksforgeeks.org/ruby-programming-language/#basics

BEGIN{
  a=(2...8).to_a
  puts "Begin done value #{a.include?3}"
}

END{
  puts "After begin done value is #{a}"
}
# global variable
$joinname="thiru"
def globe
  # ternary operator
  puts 5>10?"krishna":$joinname;
end
globe()

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

