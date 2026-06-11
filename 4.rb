class Rectangle
  attr_reader :length, :width

  def initialize(length,width)
    @length = length
    @width = width
  end

  def area 
    @length*@width
  end

  def perimeter
    2*(@length+@width)
  end
end

class Square < Rectangle
  def initialize(side)
    super(side,side)
  end
end

rectangle = Rectangle.new(5,3)
puts "Rectangle Area: #{rectangle.area}"
puts "Rectangle Perimeter: #{rectangle.perimeter}"

square = Square.new(4)
puts "Square Area: #{square.area}"
puts "Square Perimeter: #{square.perimeter}"