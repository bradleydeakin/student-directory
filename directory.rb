def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  students = []

  name = gets.chomp

  while !name.empty? do

    students << {name: name, cohort: :november}
    puts "now we have #{students.count} students"

    name = gets.chomp
  end

  return students
end
# students = [

#     {name: "Dr. Hannibal Lecter", cohort: :november},
#     {name: "Darth Vader", cohort: :november},
#     {name: "Nurse Ratched", cohort: :november},
#     {name: "Michael Corleone", cohort: :november},
#     {name: "Alex DeLarge", cohort: :november},
#     {name: "The Wicked Witch of the West", cohort: :november},
#     {name: "Terminator", cohort: :november},
#     {name: "Freddy Krueger", cohort: :november},
#     {name: "The Joker", cohort: :november},
#     {name: "Joffrey Baratheon", cohort: :november},
#     {name: "Norman Bates", cohort: :november}
# ]
def print_header
    puts"The students of Villains Academy"
    puts "-------------"
end
def print(students)
    students.each_with_index do |student, index|
        puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
    end
end

def while_print(students)
    count = 0
    while count != students.length do
        students.each do |student|
            puts "#{student[:name]}"
            count += 1
        end
    end
end

def print_begins_D(students)
    d = students.select {|name| name[:name].start_with?('d') }
    puts d
end
def less_than_12(students)
    twelve = students.select { |name| name[:name].length < 12 }
    puts twelve
end

def print_footer(students)
    puts "overall we have #{students.count} great students"
end

students = input_students
print_header
print(students)
while_print(students)
print_footer(students)
less_than_12(students)