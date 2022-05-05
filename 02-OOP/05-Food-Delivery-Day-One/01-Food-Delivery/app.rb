# TODO: require relevant files to bootstrap the app.
# Then you can test your program with:
#   ruby app.rb
require 'csv'

require_relative 'app/repositories/meal_repository'
require_relative 'app/controllers/meals_controller'

# require_relative 'app/repositories/consumer_repository'
# require_relative 'app/controllers/consumers_controller'

require_relative 'router'

meal_repository = MealRepository.new('data/meals.csv')
# consumer_repository = ConsumerRepository.new('data/consumers.csv')
# doctor_repository = DoctorRepository.new('data/doctors.csv')

meals_controller = MealsController.new(meal_repository)
# consumers_controller = ConsumersController.new(consumer_repository)
# doctors_controller = DoctorsController.new(doctor_repository)

router = Router.new(meals_controller)

router.run
