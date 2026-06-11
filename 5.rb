class Vehicle
  attr_accessor :make, :speed

  def initialize(make,speed)
    @make = make
    @speed = speed
  end

  def accelerate(amount)
    @speed += amount
  end

  def brake(amount)
    @speed -= amount
    @speed =0 if @speed < 0
  end
end

class Truck < Vehicle
  attr_accessor :payload

  def initialize(make,speed,payload)
    super(make,speed)
    @payload = payload
  end
end

truck = Truck.new("Volvo",50,200)

puts "Make: #{truck.make}"
puts "Speed: #{truck.speed} km/h"
puts "Payload: #{truck.payload} kg"

truck.accelerate(20)
puts"After accelerating: #{truck.speed} km/h"

truck.brake(30)
puts "After braking: #{truck.speed} km/h"
