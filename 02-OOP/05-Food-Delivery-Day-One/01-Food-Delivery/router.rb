# TODO: implement the router of your app.
class Router
  def initialize(meals_controller)
    @meals_controller = meals_controller
    #@customers_controller = customers_controller
  end

  def run
    loop do
      print_actions
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  private

  def print_actions
    puts "1. Create Meal"
    puts "2. List Meals"
  #   puts "4. List Rooms"
  #   puts "5. Create Doctor"
  #   puts "6. List Doctors"
  #   puts '-' * 30
  #   puts "Choose an option:"
  end

  def dispatch(action)
    case action
    when 1 then @meals_controller.create
    when 2 then @meals_controller.list
  #   when 4 then @rooms_controller.list
  #   when 7 then @rooms_controller.assign_patient_to_room
  #   when 5 then @doctors_controller.create
  #   when 6 then @doctors_controller.list
    end
  end
end
