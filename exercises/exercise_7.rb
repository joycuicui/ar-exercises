require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
Employee.validates :first_name, presence: true
Employee.validates :last_name, presence: true
Employee.validates :hourly_rate, numericality: {only_integer: true, in: 40...200}
Employee.validates :store, presence: true

Store.validates :name, length: {minimum: 3}
Store.validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
Store.validate :must_carry_apparel

def must_carry_apparel
  unless mens_apparel || womens_apparel
    errors.add(:base, "Store must carry at least one of the men's or women's apparel")
  end
end

# puts "Enter a store name:"
# store_name = gets.chomp

# new_store = Store.new(name: store_name)
# error_messages = new_store.errors.full_messages

# if new_store.save 
#   puts "New store created successfully!"
# else 
#   puts "Error Messages:"
#   error_messages.each do |msg|
#     puts "#{msg}"
#   end
# end

# puts "Debug Output:"
# puts "Save operation successful: #{new_store.persisted?}"
# puts "Errors present: #{new_store.errors.present?}"
