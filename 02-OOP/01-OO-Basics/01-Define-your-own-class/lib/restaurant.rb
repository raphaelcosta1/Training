class Restaurant
  def initialize(kind, capacity, price)
    @kind = kind
    @capacity = capacity
    @price = price
  end

  def lotation(guests)
    if guests >= @capacity
      puts "We can't have more guests!"
    else
      puts "Open for more guests."
    end
  end
end
