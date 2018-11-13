class Point
  attr_accessor :x, :y

  def to_s
    "Point: (#{@x}; #{@y})"
  end

  def assign_coordinates x, y
    @x = x
    @y = y
    self
  end

  def + other_point
    x = self.x + other_point.x
    y = self.y + other_point.y
    Point.new(x, y)
  end

end

point = Point.new.assign_coordinates(1,2)
puts point
p point