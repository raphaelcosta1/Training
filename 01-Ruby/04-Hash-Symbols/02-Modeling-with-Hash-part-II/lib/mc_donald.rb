DISHES_CALORIES = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Big Mac" => 540,
  "McChicken" => 350,
  "French Fries" => 230,
  "Salad" => 15,
  "Coca Cola" => 150,
  "Sprite" => 150
  #"Happy Meal" => /#{Cheese Burger} , /#{French Fries}, Coca Cola}
  #Happy Meal => 
}
  #add 3 meals (seria uma outra hash com array dentro?)
MEALS = { "Happy Meal" => [hamburguer, batata, salada] }

}
conferir cada elementodo order se é meal ou alimento,



def poor_calories_counter(burger, side, beverage)
  DISHES_CALORIES[burger] + DISHES_CALORIES[side] + DISHES_CALORIES[beverage]
end

def calories_counter(orders)
  # TODO: return number of calories for a less constrained order
end

# orders = ["French Fries", "Happy Meal", "Sprite", "Best Of McChicken"]
# puts calories_counter(orders)

# def tag(name, content, attrs = {})
#   flat_attrs = attrs.map { |key, val| " #{key}='#{val}'" }.join
#   return "<#{name}#{flat_attrs}>#{content}</#{name}>"
# end

