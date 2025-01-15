# frozen_string_literal: true

class Geeks
  def publicmethod
    puts "In public!"

    privatemethod
  end

  def privatemethod
    puts "In private!"
  end


end

obj1=Geeks.new

#  indirectly calling private method
obj1.publicmethod