require_relative '../setup'

puts "Exercise 1"
puts "----------"

class Store < ActiveRecord::Base
  belongs_to :stores
end

burnaby = Store.create(name: "Burnaby", annual_revenue: "300_000", mens_apparel: true, womens_apparel: true)
richmond = Store.create(name: "Richmond", annual_revenue: "1260000", mens_apparel: false, womens_apparel: true)
gastown = Store.create(name: "Gastown", annual_revenue: "190000", mens_apparel: true, womens_apparel: false)

total = Store.count
puts total

#FWA
# Your code goes below here ...
