# https://www.geeksforgeeks.org/polymorphism-in-ruby/


# method overloading not supported in ruby

# polymorphism using inheritance

# duck typing is how

class Vehicles
  def tyretype
    puts "Heavy car"
  end
end

class Cars < Vehicles

  def tyretype(wheel)
    puts "Small car with #{wheel} wheels"
  end
end

class Cycle < Vehicles
  def tyretype(wheel)
    puts " Cycle with #{wheel} wheels"
  end
end

#
obj1 = Cars.new

obj1.tyretype(4)


obj2 = Cars.new



#DUck typing


#
class Bike
  def move
    puts "car makes a ride in roads"
  end
end

class Plane
  def move
    puts "Plane fly in sky"
  end
end

def ride_vehicle(vehicle)
  vehicle.move
end


v1=Bike.new
v2=Plane.new

ride_vehicle(v1)


# Acess Modifier

class Geeks
  def method_1
    puts"Public Mehtod of class Geeks"
  end

  protected

  def method_2
    puts "Protocted method of a class Geeks"
  end

  private
  def method_3
    puts "private method of class Geeks"
  end

  public
  def method_4
    method_3
  end
end


class Sudo < Geeks

  def method_5

    puts "Public Mehtod of class Sudo"

    method_1

    obj1 = Sudo.new
    method_4

  end
end


obj2 = Sudo.new

obj2.method_4
