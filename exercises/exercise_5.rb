require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"


# Your code goes here ...
@total_revenue = Store.sum(:annual_revenue)
puts "Total annual revenue for all stores is $#{@total_revenue}"

@average_store_revenue = @total_revenue/ Store.count
puts "The average annual revenue from each store is #{@average_store_revenue}"

@high_revenue_stores = Store.where("annual_revenue > 1000000").count
puts "#{@high_revenue_stores} stores made over $1000000 in annual_revenue"
