#Solution 1
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

#Solution 2
class Profile
  attr_accessor :full_name, :age, :work
  attr_reader :address

  def initialize(full_name, age, address, work)
    @full_name = full_name
    @age = age
    @address = address
    @work = work
  end
end

my_profile = Profile.new('Juan', 18, 'Bulacan', 'Instructor')

puts my_profile.full_name
my_profile.full_name = 'Juan Cruz'

my_profile.age = 25
my_profile.work = 'Software Engineer'

puts my_profile.full_name
puts my_profile.age
puts my_profile.work
puts my_profile.address
