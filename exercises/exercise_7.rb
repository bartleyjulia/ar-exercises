require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"
puts "Enter a new store to the database..."
@user_input = $stdin.gets.chomp
@user_input = Store.create(name: "#{@user_input}")
@user_input.valid?
puts @user_input.errors.messages

@all_stores = Store.all

@all_stores.each do |store|
  puts "#{store.name}"
end


# Your code goes here ...
