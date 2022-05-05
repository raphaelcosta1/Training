require_relative '../models/meal'
require 'csv'

class MealRepository
  CSV_OPTIONS = { headers: :first_row, header_converters: :symbol }

  def initialize(csv_file)
    @csv_file = csv_file
    @meals = []
    @next_id = 1
    load_csv if File.exist?(@csv_file)
  end

  def add(meal)
    meal.id = @next_id
    @meals << meal
    save_csv
    @next_id += 1
  end

  def find(id)
    #se o id deste meal for igual ao id que eu desejo, eu retorno esse id
    @meals.select { |meal| meal.id == id }.first
  end

  def all
    @meals
  end

  def load_csv
    CSV.foreach(@csv_file, CSV_OPTIONS) do |row|
      meal = Meal.new(id: row[:id].to_i, name: row[:name], price: row[:price].to_i)
      #meal = @meal_repository.find(id)
      @meals << meal
    end
  end

  def save_csv
    CSV.open(@csv_file, 'wb', CSV_OPTIONS) do |file|
      file << %i[id name price] # CSV HEADER
      @meals.each do |meal|
        file << [meal.id, meal.name, meal.price]
      end
    end
  end
end
