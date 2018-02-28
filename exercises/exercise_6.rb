require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# class Store < ActiveRecord::Base
#   has_many :employees
# end

class Employee < ActiveRecord::Base
  belongs_to :store
  validates_inclusion_of :hourly_rate, :in => 40..200
  validates_presence_of :first_name, :last_name, :store

end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "Julia", last_name: "Bartley", hourly_rate: 100)
@store1.employees.create(first_name: "Pearl", last_name: "Sparkes", hourly_rate: 160)
@store2.employees.create(first_name: "Billy", last_name: "Bob", hourly_rate: 20)
bobby = Employee.create(first_name: "Bobby", last_name: "Bill", hourly_rate: 20)

@khurram = Employee.find(1)
puts @khurram.first_name

@all_employees = Employee.all
puts @all_employees

@all_employees.each do |employee|
  puts "#{employee.first_name}"
end



# Your code goes here ...
