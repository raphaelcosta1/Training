class OrangeTree
  attr_reader :height, :fruits, :age

  def initialize
    @age = 0
    @dead = false
    @height = 0
    @fruits = 0
  end
  # TODO: Implement all the specs defined in the README.md :)

  def dead?
    @dead
  end

  def one_year_passes!
    unless dead?
      @age += 1
      @fruits = 0
      update_height
      update_fruits
      update_dead?
    end
  end

  def update_height
    @height += 1 if @age <= 10
  end

  def update_fruits
    if @age > 5 && @age < 10
      @fruits = 100
    elsif @age >= 10 && @age < 15
      @fruits = 200
    end
  end

  def pick_a_fruit!
    @fruits -= 1 if @fruits.positive?
  end

  def update_dead?
    if @age > 100
      @dead = true
    elsif @age >= 50
      @dead = (@age >= rand(51..100))
    end
  end
end
