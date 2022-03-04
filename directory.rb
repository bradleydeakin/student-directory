def input_students(students)
  puts "would you like to enter students"
  answer = gets.chomp
  no_students = false
  if answer == "no"
    puts "Ok no students to enter"
    no_students = true
    return no_students
  end
  puts "Please enter the names of the students"
  
  students = students

  name = gets.chomp
  if name == " "
    name += 'unknown'
  end
  puts "please enter cohort"
  cohort = gets.chomp
  if cohort == ""
    cohort += "unknown"
  end
  puts "please enter height"
  height = gets.chomp
  if height == ""
    height += "unknown"
  end
  while true do
    students << {name: name, cohort: cohort, height: height}
    if students.length == 1
        puts "now we have 1 student"
    else
        puts "now we have #{students.count} students"
    end
    puts "would you like to enter more students"
    decision = gets.chomp
    if decision == "no"
        break
    else
        puts "Please enter the names of the students"
        name = gets.chomp
        if name == " "
            name += 'unknown'
        end
        puts "please enter cohort"
        cohort = gets.chomp
        if cohort == ""
            cohort += "unknown"
        end
        puts "please enter height"
        height = gets.chomp
        if height == ""
            height += "unknown"
        end
    end
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
def print_header(students)
    if students.length > 0
        puts"The students of Villains Academy"
        puts "-------------"
    else
        puts "no data to display"
    end
end
def print(students)
    if students.length > 0
        students.each_with_index do |student, index|
            puts "#{index + 1}. #{student[:name]} (cohort = #{student[:cohort]}, height = #{student[:height]})"
        end
    end
end

def while_print(students)
    if students.length > 0
        count = 0
        while count != students.length do
            students.each do |student|
                puts "#{student[:name]}".center(20)
                count += 1
            end
        end
    end
end

def feb_cohort(students)
    if students.length > 0
        feb = students.select{ |student| student[:cohort] == "feb" }
        puts feb 
    end
end

def print_begins_D(students)
    if students == false
        d = students.select {|name| name[:name].start_with?('d') }
        puts d
    end
end
def less_than_12(students)
    if students == false
        twelve = students.select { |name| name[:name].length < 12 }
        puts twelve
    end
end

def print_footer(students)
    if students.length > 0
      puts "overall we have #{students.count} great students"
    end
end

def interactive_menu
    students = []
    while true do
        puts "Select: \n 1. input students\n 2. show students\n 3. 9. Exit"
        selcetion = gets.chomp
        case selcetion
        when "1"
            input_students(students)
        when "2"
            print_header(students)
            print(students)
            # feb_cohort(students)
            # while_print(students)
            print_footer(students)
            # less_than_12(students)
        when "9"
            exit
        else
            "Sorry didnt understand"
        end
    end
end

interactive_menu

