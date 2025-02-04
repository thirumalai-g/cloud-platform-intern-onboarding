# https://www.geeksforgeeks.org/ruby-encapsulation/




# Encapsulation of wrapping up of data under asingle unit


class Encapsulation
  def initialize(id,name,addr)
    @id = id
    @name = name
    @addr = addr
  end

  def display
    puts "Customer id: #@id"
    puts "Name: #@name"
    puts "Address: #@addr"
  end
end


cust1 = Encapsulation.new("1","krish","chennai")

cust2 = Encapsulation.new("2","thiru","usa")

cust1.display

cust2.display