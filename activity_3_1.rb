class Rectangle
  attr_reader :length, :width

  def initialize(length, width)
    @length = length
    @width = width
  end

  def area
    @length * @width
  end

  def perimeter
    2 * (@length + @width)
  end

  def resize(length, width)
    @length = length
    @width = width
  end
end

rectangle = Rectangle.new(10, 12)
puts rectangle.length
puts rectangle.width
puts rectangle.area
puts rectangle.perimeter

rectangle.resize(15, 30)
puts rectangle.length
puts rectangle.width
