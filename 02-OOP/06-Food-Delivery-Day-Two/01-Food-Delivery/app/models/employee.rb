class Employee
  attr_accessor :id
  attr_reader :name, :address, :role

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @address = attributes[:address]
    @role = attributes[:role]
  end

  def managers?
    @role == manager
  end

  def delivery_guy?
    @role == delivery_guy
  end
end


# 1.1 - Employee model
# Our restaurant has two types of employees, managers and delivery guys. Both have an id, a username and a password,
#  but they have different privileges depending of their roles.

# Write some code to implement this and crash-test your model in irb. Then test your code by running rake employee.

# All green? Good! Time to git add, commit and push.