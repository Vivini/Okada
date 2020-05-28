# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bike.destroy_all
User.destroy_all

user1 = User.create({
  user_name: "holly",
  email: "holly@gmail.com",
  password: "123456",
  img_url: "https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
})

Bike.create!({
  model: "Pashley",
  bike_type: "Utility bike",
  capacity: "L",
  user: user1,
  price: 35.00,
  img_url: "https://www.fullycharged.com/newsandreviews/wp-content/uploads/2017/10/ButchersBicyclesMk1E-2017_Black-angle-tilt1.jpg",
  address: "Silbersteinstraße 68, Berlin"
})

user2 = User.create({
  user_name:"ann",
  email: "ann@gmail.com",
  password: "123456",
  img_url: "https://images.unsplash.com/photo-1504911539020-cfb0f7887a5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80"
  })

Bike.create!({
  model: "Yuba",
  bike_type: "Long Tail",
  capacity: "M",
  user: user2,
  price: 45.00,
  img_url: "https://www.cycle9.com/wp-content/uploads/2010/03/Yuba_V3_Tangerine.jpg",
  address: "Leinestraße 2, Berlin"
})

user3 = User.create({
  user_name: "alex",
  email: "alex@gmail.com",
  password: "123456",
  img_url: "https://unsplash.com/photos/crXcq7JqjVU"
  })

Bike.create!({
  model: "WorkCycles",
  bike_type: "Bakfiets",
  capacity: "S",
  user: user3,
  price: 25.00,
  img_url: "http://dutchbikeshop.ie/wp-content/uploads/wp-checkout/images/workcycles-kr8-cargo-bike-1408538891.jpg",
  address: "Urbanstrasse 116, Berlin"
})

user4 = User.create({
  user_name: "james",
  email: "james@gmail.com",
  password: "123456",
  img_url: "https://images.unsplash.com/photo-1568290696106-ace229a158a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  })

Bike.create!({
  model: "Virtue",
  bike_type: "Cycle Truck",
  capacity: "L",
  user: user4,
  price: 27.50,
  img_url: "http://www.cyclelicio.us/wp-content/uploads/2014/01/2014-Virtue-School-Bus-500x462.jpg",
  address: "Hermannstraße 110, Berlin"
})

user5 = User.create({
  user_name: "laura",
  email: "laura@gmail.com",
  password: "123456",
  img_url: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80"
})

Bike.create!({
  model: "Pedago",
  bike_type: "Porteur Bike",
  capacity: "M",
  user: user5,
  price: 17.00,
  img_url:"https://images.unsplash.com/photo-1556538628-451736d0e2c3?ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80",
  address: "Flughafenstraße 82, Berlin"
})

user6 = User.create({
  user_name: "tom",
  email: "tom@gmail.com",
  password: "123456",
  img_url: "https://images.unsplash.com/photo-1558224523-1c255516fddf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  })

Bike.create!({
  model: "Surly Bikes",
  bike_type: "Long John",
  capacity: "S",
  user: user6,
  price: 19.00,
  img_url: "https://images.unsplash.com/photo-1517132020230-beff8105d397?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  address: "Reuterstraße 29, Berlin"
})

user7 = User.create({
  user_name: "andrea",
  email: "andrea@gmail.com",
  password: "123456",
  img_url: "https://images.unsplash.com/photo-1520813792240-56fc4a3765a7?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
})

Bike.create!({
  model: "Messenger V2",
  bike_type: "Front Load",
  capacity: "L",
  user: user7,
  price: 28.00,
  img_url: "https://images.unsplash.com/photo-1571321804268-deadf1124db9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  address:"Weserstraße 105, Berlin"
})

user8 = User.create({
  user_name: "aaron",
  email: "aaron@gmail.com",
  password: "123456",
  img_url: "https://images.unsplash.com/photo-1546434946-3e8a5564945d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  })

Bike.create!({
  model: "Winther",
  bike_type: "Electric Cargo Bike",
  capacity: "M",
  user: user8,
  price: 45.00,
  img_url:"https://www.edinburghbicycle.com/info/wp-content/uploads/2019/03/DSC00572-copy.jpg",
  address: "Schierker Straße 27, Berlin"
})

user9 = User.create({
  user_name: "bruno",
  email: "bruno@gmail.com",
  password: "123456",
  img_url: "https://images.unsplash.com/photo-1542404423-a7af0f59cad8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  })

Bike.create!({
  model: "UBCO",
  bike_type: "Utility Bike",
  capacity: "S",
  user: user9,
  price: 35.00,
  img_url:"https://images.unsplash.com/photo-1567408332664-24ed894cf462?ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80",
  address: "Reichenbergerstraße 12, Berlin"
})

user10 = User.create({
  user_name: "ben",
  email: "ben@gmail.com",
  password: "123456",
  img_url: "https://images.unsplash.com/photo-1471015060382-6cbd8b4e34d0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  })

Bike.create!({
  model: "Bennno",
  bike_type: "Electric Cargo Bike",
  capacity: "L",
  user: user10,
  price: 46.00,
  img_url: "https://www.fullycharged.com/newsandreviews/wp-content/uploads/2017/10/ButchersBicyclesMk1E-2017_Black-angle-tilt1.jpg",
  address: "Kottbusser Damm 32, Berlin"
})


