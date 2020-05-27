# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bike.destroy_all
User.destroy_all

user1 = User.create(user_name:"holly", email: "holly@gmail.com", password: "123456")
Bike.create!([{
  model: "Pashley",
  bike_type: "Utility bike",
  capacity: "L",
  user: user1
}])

user2 = User.create(user_name:"ann", email: "ann@gmail.com", password: "123456")
Bike.create!([{
  model: "Pashley",
  bike_type: "Long Tail",
  capacity: "M",
  user: user2
}])

user3 = User.create( user_name: "alex", email: "alex@gmail.com", password: "123456")
Bike.create!([{
  model: "Pashley",
  bike_type: "Bakfiets",
  capacity: "S",
  user: user3
}])

