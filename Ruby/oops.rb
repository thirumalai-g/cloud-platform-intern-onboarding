# frozen_string_literal: true

class Language
  #public variable
  $reader = 'ABCD'
#   class variable
  @@count = 0

  def initialize(language_name,topic_name)
    @language_name = language_name
    @topic_name = topic_name
    @@count += 1
  end

  def get_topic
    @topic_name
  end

  def self.get_count
    @@count
  end

  def get_language_name
    @language_name
  end
end


obj1 = Language.new("Ruby","method")
obj2 = Language.new("Java","object")


puts Language.get_count()



# inheritance and using super keyword

class Vehicle
  def initialize(vehicle_name,vehicle_color)
    @vehicle_color = vehicle_color
    @vehicle_name = vehicle_name
  end

  def description
    puts "This is a vehicle"
  end
end

class Bus < Vehicle
  def display
    puts "This is a bus"
  end
end
# multilevel
class Car < Bus
  def description
    super
    puts "This is a car"

  end
end


v1 = Bus.new("volvo","blue")

v2 = Car.new("Thar","black")

v1.display
v1.description

v2.display
v2.description

# private class


class Marvel
  class Guardian
    def groot
      puts "I am Groot"
    end
  end

  class Avengers
    def Tony
      puts "I am Tony"
    end
  end
  # private_constant :Guardian
  private_constant :Avengers

  def acess
    Avengers.new.Tony
  end
end

Marvel::Guardian.new.groot

Marvel.new.acess

Marvel::Avengers.new.Tony
