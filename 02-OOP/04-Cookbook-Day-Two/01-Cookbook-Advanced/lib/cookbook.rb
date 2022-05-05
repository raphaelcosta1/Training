require 'csv'
require_relative 'recipe'

class Cookbook
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @recipes = []
    load
  end

  def all
    @recipes
  end

  def find(recipe_index)
    @recipes[recipe_index]
  end

  def add_recipe(recipe)
    @recipes << recipe
    save
  end

  def remove_recipe(recipe_index)
    @recipes.delete_at(recipe_index)
    save
  end

  def save
    CSV.open(@csv_file_path, 'wb') do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description, recipe.rating, recipe.prep_time, recipe.done?]
      end
    end
  end

  private

  def load
    CSV.foreach(@csv_file_path) do |row|
      name = row[0]
      description = row[1]
      rating = row[2].to_i
      prep_time = row[3]
      done = row[4] == 'true'
      new_recipe = Recipe.new(name, description, rating, prep_time, done)
      @recipes << new_recipe
    end
  end
end
