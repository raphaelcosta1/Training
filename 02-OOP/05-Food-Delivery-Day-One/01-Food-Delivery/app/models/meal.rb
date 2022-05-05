class Meal
#Name and price are methods, accesible outside here
  attr_reader :name, :price
  attr_accessor :id
#
  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @price = attributes[:price]
  end
end

# attributes = {name: 'Roberto', age: 20 }
# Patient.new(attributes)
# OR
# Patient.new({name: 'Roberto', age: 20})
# OR
# Patient.new(name: 'Roberto', age: 20)
# Patient.new(age: 20, name: 'Roberto')