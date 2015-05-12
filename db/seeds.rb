# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.create(name: "Breads")
Category.create(name: "Fruit")
Category.create(name: "Drinks")
Category.create(name: "Entrees")
Category.create(name: "Grill")
Category.create(name: "Milk")

Food.create(name: "White Toast", category_id:1)
Food.create(name: "Apple", category_id:2)
Food.create(name: "Pepsi", category_id:3)
Food.create(name: "Turkey", category_id:4)
Food.create(name: "Burger", category_id:5)
Food.create(name: "Skim", category_id:6)

Block.create(name: "Med 1")
Block.create(name: "Med 2")
Block.create(name: "Med 3")
Block.create(name: "Med 5")
Block.create(name: "Med ICU")

Room.create(rmnumber:101, phone:6101, block_id:1)
Room.create(rmnumber:102, phone:6102, block_id:1)
Room.create(rmnumber:103, phone:6103, block_id:1)
Room.create(rmnumber:104, phone:6104, block_id:1)
Room.create(rmnumber:105, phone:6105, block_id:1)
Room.create(rmnumber:106, phone:6106, block_id:1)
Room.create(rmnumber:107, phone:6107, block_id:1)
Room.create(rmnumber:108, phone:6108, block_id:1)
Room.create(rmnumber:109, phone:6109, block_id:1)
Room.create(rmnumber:110, phone:6110, block_id:1)
Room.create(rmnumber:111, phone:6111, block_id:1)
Room.create(rmnumber:112, phone:6112, block_id:1)

Diet.create(name: "General")
Diet.create(name: "Cardiac")
Diet.create(name: "Renal")



