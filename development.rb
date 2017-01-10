require './employee.rb'

damon = Employee.new(name: 'Damon Neanover', email: 'damon@automatedinsights.com', phone_number: 1, salary: 100_000)
support = Department.new(name: 'Support Squad')

puts "The new employee's name is #{damon.name}"

puts "Damon's salary was $#{damon.salary}"

damon.raise(10_000)

puts "Damon's salary is now $#{damon.salary}"

support.add_employee(damon)

puts "#{damon.name} is a member of the #{support.name}."

new_employee = Employee.new(name: 'The Intern', email: 'intern@automatedinsights.com', phone_number: 0, salary: 5_000)
support.add_employee(new_employee)
puts "The new employee's name is #{new_employee.name}"
puts "#{new_employee.name} is a member of the #{support.name}."

puts "The Support department has the following members: #{support.employee_names}"
puts "The total salary of the department is #{support.total_salary}"

support.department_raise(5000)
puts "Everyone on the #{support.name} is getting a $5000 bonus.  The Department now makes #{support.total_salary}"

damon.performance

puts damon.marks

damon.notes
puts "You said the following:"
puts damon.reviews




# Create a new department (given its name).
# Create a new employee (given his/her name, email address, phone number, and salary).
# Add an employee to a department.
# Get an employee's name.
# Get an employee's salary.
# Get a department's name.
# Get a total salary for all employees in a department.
# Add some employee review text (a paragraph or two) to an employee.
# Mark whether an employee is performing satisfactorily or not satisfactorily.
# Give a raise to an individual. You decide if this makes sense in dollars or in percent.
# Give raises to a department's employees. You must pass this method a total dollar amount, and it must distribute the raise amounts reasonably to the department's employees. Only employees who are performing satisfactorily should get raises.
