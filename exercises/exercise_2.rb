require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
# @store1 = Store.find_by(id: 1)
@store1 = Store.find(1)
@store1.update(name: 'New Burnaby')

@store2 = Store.find(2)

puts "Store 1's name is now #{@store1.name}"