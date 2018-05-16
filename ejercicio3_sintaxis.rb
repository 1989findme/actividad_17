class Store
  attr_accessor :name

  def initialize()
    @name = 'Tienda 1'
  end
end

store = Store.new()
puts store.name
