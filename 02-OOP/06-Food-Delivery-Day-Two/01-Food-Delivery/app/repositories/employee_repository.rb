require_relative '../models/employee'

class EmployeeRepository
  CSV_OPTIONS = { headers: :first_row, header_converters: :symbol }

  def initialize(csv_file)
    @csv_file = csv_file
    @employees = []
    load_csv if File.exist?(@csv_file)
    @next_id = @employees.empty? ? 1 : @employees.last.id + 1
  end

  def all
    @employees
  end

  def find(id)
    @employees.select { |employee| employee.id == id }.first
  end

  def find(username)
    @employees.select { |employee| employee.username == username }.first
  end

#   def create(customer)
#     customer.id = @next_id
#     @next_id += 1
#     @employees << customer
#     save_csv
#   end
#   private

#   def load_csv
#     CSV.foreach(@csv_file, CSV_OPTIONS) do |row|
#       customer = Customer.new(id: row[:id].to_i, name: row[:name], address: row[:address])
#       @customers << customer
#     end
#   end

#   def save_csv
#     CSV.open(@csv_file, 'wb', CSV_OPTIONS) do |file|
#       file << %i[id name address] # CSV HEADER
#       @customers.each do |customer|
#         file << [customer.id, customer.name, customer.address]
#       end
#     end
#   end
# end