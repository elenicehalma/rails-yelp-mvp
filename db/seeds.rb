# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants"
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: '1234-56789', category: 'italian' }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: '1234-56789', category: 'italian' }
lord_william = { name: "Lord William Pub", address: "265 Rue des Seigneurs, Montréal, QC H3J 0B3", phone_number: '1234-56789', category: 'italian' }
acajou =  { name: "Acajou", address: "3425a Saint Denis St, Montreal, Quebec H2X 3L1", phone_number: '1234-56789', category: 'italian' }
elena =  { name: "Elena", address: "5090 Notre-Dame St W, Montreal, Quebec H4C 1T1", phone_number: '1234-56789', category: 'italian' }

[dishoom, pizza_east, lord_william, acajou, elena].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
