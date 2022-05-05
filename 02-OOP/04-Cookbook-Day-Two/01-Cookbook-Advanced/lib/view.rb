class View
  def ask_recipe_name
    puts "Enter recipe name:"
    gets.chomp
  end

  def ask_recipe_description
    puts "Enter recipe decription:"
    gets.chomp
  end

  def ask_recipe_rating
    puts "Enter recipe rating (0-5):"
    gets.chomp.to_i
  end

  def ask_prep_time
    puts "Enter preparation time:"
    gets.chomp
  end

  def ask_ingredient
    puts "Enter ingredient to search"
    gets.chomp
  end

  def ask_index
    puts "Enter index"
    gets.chomp.to_i - 1
  end

  def display_recipe_names(names)
    names.each_with_index do |name, index|
      puts "#{index + 1} #{name}"
    end
  end

  def display(recipes)
    recipes.each_with_index do |recipe, index|
      done = recipe.done? ? '[X]' : '[ ]'
      puts "#{index + 1} - #{done} #{recipe.name}: #{recipe.description}
      (#{recipe.rating}/5) Prep Time: #{recipe.prep_time}"
    end
  end
end
