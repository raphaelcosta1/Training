require_relative "compute_name"

def ask_for_name(param)
  puts "What is your #{param}?"
  gets.chomp
end

def name_from_terminal
  first_name = ask_for_name("first name")
  middle_name = ask_for_name("middle name")
  last_name = ask_for_name("last name")

  compute_name(first_name, middle_name, last_name)
end

puts "Welcome to Ruby, #{name_from_terminal}"
