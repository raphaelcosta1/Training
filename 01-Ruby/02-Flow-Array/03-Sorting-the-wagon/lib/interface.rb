require_relative "wagon_sort"
students_name = []
name = nil
until name == ""
  puts "Type a student name:"
  name = gets.chomp
  students_name << name unless name == ""
end
puts students_name
puts students_name.size
sorted_students = wagon_sort(students_name)
puts "Congratulations! Your Wagon has #{sorted_students.size} students:"
if sorted_students.size >= 2
  puts "#{sorted_students[0..-2].join(', ')} and #{sorted_students.last}"
else
  puts sorted_students.first
end
