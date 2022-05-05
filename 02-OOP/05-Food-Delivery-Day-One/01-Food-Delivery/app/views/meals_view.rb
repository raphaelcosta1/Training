class MealsView
  def ask_name
    puts 'Enter meal name:'
    gets.chomp.strip
  end

  def ask_price
    puts 'Enter meal price:'
    gets.chomp.to_i
  end

  # def ask_meal_index
  #   puts 'Enter meal index'
  #   gets.chomp.to_i - 1
  # end

  def list(meals)
    puts 'Meals List'
    meals.each_with_index do |meal, index|
      puts "#{index + 1} - Name: #{meal.name} | $#{meal.price}"
    end
    puts '-' * 30
    puts "\n\n"
    puts 'Press enter to continue...'
    gets  # This don't work in rake specs
  end
end
