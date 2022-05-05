class Dessert
  attr_reader :name, :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    @calories < 200
  end

  def delicious?
    true
  end
end

class JellyBean < Dessert
  attr_reader :flavor

  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
  end

  def delicious?
    @flavor != "black licorice"
  end
end

# quindin = Dessert.new("quindin", 100)
# p quindin.healthy?

# strawberry = JellyBean.new("strawberry", 50, "strawberry")
# p strawberry.healthy?

# black_licorice = JellyBean.new("black_licorice", 20, "black_licorice")
# p black_licorice.delicious?
