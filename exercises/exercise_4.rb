require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create(name: "Surrey", annual_revenue: "224000", mens_apparel: false, womens_apparel: true)
whistler = Store.create(name: "Whistler", annual_revenue: "1900000", mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name: "Yaletown", annual_revenue: "430000", mens_apparel: true, womens_apparel: true)
g = Store.create(name: "G", annual_revenue: "190000", mens_apparel: true, womens_apparel: false)
gassy = Store.create(name: "Gassy", annual_revenue: "-1", mens_apparel: true, womens_apparel: false)


@mens_stores = Store.where(mens_apparel: true)
puts @mens_stores

@mens_stores.each do |store|
  puts "The #{store.name} store makes $#{store.annual_revenue} in annual revenue."
end

@womens_stores = Store.where("womens_apparel = ? AND annual_revenue < ? ", true, 1000000)
puts @womens_stores

@womens_stores.each do |store|
  puts "The #{store.name} store makes $#{store.annual_revenue} in annual revenue."
end
