require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
Store.has_many :employees
Employee.belongs_to :store

@store1.employees.create(first_name: "Lulu", last_name: "Melon", hourly_rate: 100 )
@store1.employees.create(first_name: "Bob", last_name: "Smith", hourly_rate: 85)
@store1.employees.create(first_name: "Alice", last_name: "Johnson", hourly_rate: 90)

@store2.employees.create(first_name: "Charlie", last_name: "Brown", hourly_rate: 95)
@store2.employees.create(first_name: "Emily", last_name: "Davis", hourly_rate: 110)
