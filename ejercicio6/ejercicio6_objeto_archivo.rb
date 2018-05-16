class Product
  attr_reader :name #Para que pueda ser leido desde fuera del metodo
 def initialize(name, *prices)#prices representa al precio del conjunto de productos *SPLAT
 @name = name
@prices = prices.map(&:to_i)#SPLAT
 end
#############Definimos promedio############
 def average
   @prices.inject(&:+) / @prices.size.to_f
 end
 ###########################################
end
##########Abrir archivo######################
products_list = []#==>Inicio del arreglo que crearemos
file = File.open('catalogo.txt', 'r')
data = file.readlines
file.close
############################################
###########Definimos la lectura del archivo############
data.each do |line|
 ls = line.split(', ')##=>>>Lectura por linea
 products_list << Product.new(ls[0], ls[1], ls[2], ls[3], ls[4])
end

puts "Promedios de cada producto"
products_list.each do |products_list|
  puts "#{products_list.name} Tiene un promedio del precio de"
  puts products_list.average
end
