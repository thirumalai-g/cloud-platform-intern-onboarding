# frozen_string_literal: true

#Method overiding

class Shapes
  def initialize(width, height)
    @width = width
    @height = height
  end

  def area
    print("Area of rectangle ")
    puts @width * @height
  end
end

class Triangle < Shapes

  def area
    print("area of triangle ")
    puts @width * @height * 0.5
  end
end

s1=Triangle.new(20, 20)
s1.area
s2=Shapes.new(20,20)
s2.area


# recursion
def fact(n)
  if n<=1
    return 1
  end
  return fact(n-1)*n
end

puts "factorial 10 is #{fact(10)}"


puts "#{(1..10).to_a}"

class Student
  def attendence
    puts "all present"
  end
end

student=Student.new
student.attendence


# initiliaze method

class Person
  def initialize(name,id)
    @name=name
    @id = id
  end
  def get_name
    puts "person name #{@name}"
  end
end

p1=Person.new("krish",1)

p1.get_name

