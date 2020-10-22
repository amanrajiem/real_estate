# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do
    owner = Faker::Name.unique.name
    address = Faker::Address.city + " " + Faker::Address.street_name
    rooms = Faker::Number.number(digits: 2)
    sqmt = Faker::Number.number(digits: 4)
    floors = Faker::Number.number(digits: 1)
    price = Faker::Number.number(digits: 5)
    air_cond = Faker::Boolean.boolean
     House.create( owner: owner, address: address, rooms: rooms, sqmt: sqmt, floors: floors, air_cond: air_cond, price: price)
end 


5.times do
    owner = Faker::Name.unique.name
    address = Faker::Address.city + " " + Faker::Address.street_name
    shops = Faker::Number.number(digits: 2)
    sqmt = Faker::Number.number(digits: 4)
    parking = Faker::Number.number(digits: 2)
    price = Faker::Number.number(digits: 5)
    CommecialUnit.create( owner: owner, address: address, shops: shops, sqmt: sqmt, parking: parking, price: price)
end


5.times do
    owner = Faker::Name.unique.name
    address = Faker::Address.city + " " + Faker::Address.street_name
    units = Faker::Number.number(digits: 2)
    sqmt = Faker::Number.number(digits: 4)
    price = Faker::Number.number(digits: 5)
    ComplexBuilding.create( owner: owner, address: address, units: units, sqmt: sqmt, price: price)
end

