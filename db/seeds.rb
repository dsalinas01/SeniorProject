# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(name: "Daniel", email:"test@test.com", password_digest: 123456)

Block.create(name: 'Emergency')
Block.create(name: 'Med_1')
Block.create(name: 'Med_2')
Block.create(name: 'ICU')

Room.create(rmnumber:12, phone:6100, block_id:1)
Room.create(rmnumber:101, phone:6101, block_id:2)
Room.create(rmnumber:209, phone:6209, block_id:3)