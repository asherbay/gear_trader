# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




Category.destroy_all
camping = Category.create(name: "Camping")
fishing = Category.create(name: "Fishing")
skiing = Category.create(name: "Skiing")
climbing = Category.create(name: "Climbing")
biking = Category.create(name: "Biking")
running = Category.create(name: "Running")
hiking = Category.create(name: "Hiking")
utv = Category.create(name: "UTV")
kayaking = Category.create(name: "Kayaking")
clothing = Category.create(name: "Clothing")


camping.items.create(name: , price: , description: , condition: )
camping.items.create(name: , price: , description: , condition: )
camping.items.create(name: , price: , description: , condition: )
camping.items.create(name: , price: , description: , condition: )
camping.items.create(name: , price: , description: , condition: )
camping.items.create(name: , price: , description: , condition: )
camping.items.create(name: , price: , description: , condition: )
camping.items.create(name: , price: , description: , condition: )
camping.items.create(name: , price: , description: , condition: )
camping.items.create(name: , price: , description: , condition: )


biking.items.create(name: "Giant Mountain Bike", price: 499.99, description: "Giant branded mountain bike with new tires", condition: "Very Good")
biking.items.create(name: "Trek Road Bike", price: 199.99, description: "Older bike that still works great", condition: "Good")
biking.items.create(name: "Specialized Road Bike", price: 399.00, description: "Great bike. New gears, tires, and never wrecked", condition: "Like New")
biking.items.create(name: "Cannondale Mountain Bike", price: 235.00, description: "Used bike for sale", condition: "Good")
biking.items.create(name: "Helmet", price: 25.60, description: "Kids helmet size 6", condition: "Good")
biking.items.create(name: "Bike Pump", price: 65.90, description: "Works good", condition: "Very Good")
biking.items.create(name: "Tire Patch Kit", price: 55.00, description: "Brand new in box", condition: "New")
biking.items.create(name: "Headlight", price: 37.99, description: "4 brightness setting including red light", condition: "Very Good")
biking.items.create(name: "Bell", price: 6.00, description: "Rings", condition: "Good")
biking.items.create(name: "Handlebar GPS", price: 275.50, description: "Garmin GPS bought but didn’t need. My loss is your gain.", condition: "New")