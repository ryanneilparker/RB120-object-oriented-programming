=begin
Create a class called MyCar. 
When you initialize a new instance or object of the class, 
allow the user to define some instance variables that tell us the year, color, and model of the car. 
Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well. 
Create instance methods that allow the car to speed up, brake, and shut the car off.

Add an accessor method to your MyCar class to change and view the color of your car. 
Then add an accessor method that allows you to view, but not modify, the year of your car.

You want to create a nice interface that allows you to accurately describe the action you want your program to perform. 
Create a method called spray_paint that can be called on an object and will modify the color of the car.

Add a class method to your MyCar class that calculates the gas mileage of any car.
=end

class MyCar
  attr_accessor :color
  attr_reader :year

  def self.efficiency(litres, kilometers)
    puts "#{kilometers / litres} km per litre of petrol."
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def speed_up(amount)
    @speed += amount
    puts "You push the gas and accelerate #{amount} km/h!"
  end

  def brake(amount)
    @speed -= amount
    puts "You push the brakes and decelerate #{amount} km/h."
  end

  def current_speed
    puts "You are currently going #{@speed} km/h."
  end

  def shut_off
    @speed = 0
    puts "Let's park this bad boy!"
  end

  def spray_paint(new_color)
    self.color = new_color
    puts "Your new #{self.color} paint job looks great!"
  end

  def to_s
    "This car is a #{self.year}, #{self.color} #{@model}."
  end
end

gerty = MyCar.new(2001, 'silver', 'minivan')
gerty.current_speed
gerty.speed_up(120)
gerty.current_speed
gerty.brake(60)
gerty.current_speed
gerty.brake(59)
gerty.current_speed
gerty.shut_off
gerty.current_speed
puts gerty.color
gerty.spray_paint('rusty silver')
puts gerty.color
puts gerty.year
puts MyCar.efficiency(30, 100)
puts gerty