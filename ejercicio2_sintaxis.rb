class Car
  attr_accessor :model , :year

  def initialize ()
    @model = 'Camero'
    @year = 2016
  end
end

car = Car.new
puts "Mi auto favorito es un #{car.model} del año #{car.year}!"
