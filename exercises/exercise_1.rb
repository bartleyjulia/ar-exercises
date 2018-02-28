require_relative '../setup'

puts "Exercise 1"
puts "----------"

class Store < ActiveRecord::Base
  has_many :employees
  belongs_to :stores
  validates :name, :length => { :minimum => 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
end

burnaby = Store.create(name: "Burnaby", annual_revenue: "300_000", mens_apparel: true, womens_apparel: true)
richmond = Store.create(name: "Richmond", annual_revenue: "1260000", mens_apparel: false, womens_apparel: true)
gastown = Store.create(name: "Gastown", annual_revenue: "190000", mens_apparel: true, womens_apparel: false)

total = Store.count
puts total



#FWA
# Your code goes below here ...
