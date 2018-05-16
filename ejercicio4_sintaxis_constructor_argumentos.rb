propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

class Dog
  attr_accessor :name
  def initialize()
    @nombre = 'Beethoven'
  end

  def ladrar
    puts "#{@nombre} Esta ladrando"
  end
end

dog = Dog.new
dog.ladrar
