class Restaurant
  attr_reader :average_rating, :city

  # TODO: add relevant accessors if necessary
  def initialize(city, name)
    @city = city
    @name = name
    @number_of_ratings = 0
    @sum_of_ratings = 0
    # TODO: implement constructor with relevant instance variables
  end

  def rate(rating)
    @number_of_ratings += 1
    @sum_of_ratings += rating
    @average_rating =  @sum_of_ratings.to_f / @number_of_ratings
  end

  def self.filter_by_city(restaurants, city)
    restaurants.select do |restaurant|
      restaurant.city == city
    end
  end
end
