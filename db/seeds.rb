# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Bike.destroy_all

puts "Creating cargo bikes..."
omnium0 = { model: "Omnium", bike_type: "Cargo", capacity: "100 kg" }
omnium1 =  { name: "Omnium", address: "Mini-Max", capacity: "75 kg"}

[ omnium0, omnium1 ].each do |attributes|
  bike = Bike.create!(attributes)
  puts "Created #{bike.name}"
end
puts "Finished!"
