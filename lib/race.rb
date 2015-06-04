require_relative 'car'

class Race 
  #write Race class code here
  attr_accessor :cars
  def initialize
  	@cars=[]
  	car1 = Car.new
  	car2 = Car.new
  	@cars << car1 << car2
  	car1.speed = rand(0..100)
  	car2.speed = rand(0..100)
  end
  def winner
  	return @cars[0] if @cars[0].speed > @cars[1].speed 
  	@cars[1]
  end
  def loser
  	return @cars[0] if @cars[0].speed < @cars[1].speed
  	@cars[1]
  end

end
