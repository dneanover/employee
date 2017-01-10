require './department.rb'

class Employee
  attr_reader :name, :email, :phone_number, :salary, :marks, :reviews

  def initialize(name:, email:, phone_number:, salary:)
    @name = name
    @email = email
    @phone_number = phone_number
    @salary = salary
    @marks = marks
    @reviews = reviews
  end

  def raise(amount)
    @salary += amount
  end

  def notes
    puts "Please leave some notes about this employee"
    puts "When you are finished, press tab followed by enter"
    @reviews = gets("\t\n").chomp
  end

  def performance
    puts "Was his or her work satisfactory? (Y/N)"
    answer = gets
    if answer = "y" || answer = "yes"
      @marks = "Satisfactory"
    elsif answer = "n" || answer = "no"
      @marks = "Dissatisfactory"
    else
      puts "Please indicate yes or no"
    end
  end
end
