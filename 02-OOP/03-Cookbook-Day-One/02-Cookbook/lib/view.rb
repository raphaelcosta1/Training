class View
  def display(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name} - #{recipe.description}"
    end
  end

  def ask_user_for_name
    puts "What's the name of the recipe?"
    return gets.chomp
  end

  def ask_user_for_description
    puts "What's the description of the recipe?"
    return gets.chomp
  end

  def ask_user_for_index
    puts "Index?"
    return gets.chomp.to_i - 1
  end
end
