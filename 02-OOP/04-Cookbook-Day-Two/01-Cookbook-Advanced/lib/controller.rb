require_relative 'view'
require_relative 'scrape_allrecipes_service'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    display
  end

  def create
    # ask user the recipe name
    name = @view.ask_recipe_name
    # ask user the recipe description
    description = @view.ask_recipe_description
    # ask user the recipe rating
    rating = @view.ask_recipe_rating
    # ask user the prep time
    prep_time = @view.ask_prep_time

    # create a new recipe
    new_recipe = Recipe.new(name, description, rating, prep_time)
    # Add recipe in cookbook
    @cookbook.add_recipe(new_recipe)
  end

  def mark_as_done
    # List all recipes
    display
    # Ask recipe to mark as done
    index = @view.ask_index
    # Find recipe by index
    recipe = @cookbook.find(index)
    # Mark as done
    recipe.done!
    # Save CSV
    @cookbook.save
  end

  def destroy
    # show all recipes
    display
    # ask user the index to remove
    index = @view.ask_index
    # call remove from cookbook
    @cookbook.remove_recipe(index)
  end

  def import
    ingredient = @view.ask_ingredient
    scrape = ScrapeAllrecipesService.new(ingredient)
    recipe = scrape.call
    @cookbook.add_recipe(recipe)
  end


  private

  def display
    # Get all recipes
    recipes = @cookbook.all
    # Call view with all recipes
    @view.display(recipes)
  end
end
