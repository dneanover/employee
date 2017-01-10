class Department
  attr_reader :name, :employees
  def initialize(name:)
    @name = name
    @employees = []
    #other things you need to declare
  end


  def add_employee(employee)
    @employees << employee
  end

  def employee_names
    list = []
    @employees.each do |employee|
      list << employee.name
    end
    list
  end

  def total_salary
    salaries = []
    @employees.each do |employee|
      salaries << employee.salary
    end
    salaries.inject(0, :+)
  end

  def department_raise(amount)
    @employees.each do |employee|
      employee.raise(amount)
    end
  end
end
