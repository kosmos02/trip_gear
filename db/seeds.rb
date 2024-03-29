# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Gear.destroy_all
UserGear.destroy_all


10.times do 
    Gear.create(name: Faker::Appliance.equipment, make_year: rand(1990..2021))
end

10.times do
    Gear.create(name: Faker::Appliance.equipment, make_year: rand(1990..2021))
end

100.times do
    UserGear.create(user: user.all.sample, gear_id: Gear.all.sample.id)
end