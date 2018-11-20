class Car
  attr_accessor :speed, :model, :color

  def initialize(speed, model, color)
    @speed = speed
    @model = model
    @color = color
  end

  def isSpeedCar
    if @speed > 200
      return true
    end
    return false
  end

end
bmw = Car.new(230, '34tf','black')

puts bmw.isSpeedCar