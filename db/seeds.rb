# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Restaurant.destroy_all

restaurants_attributes = []

100.times do
  restaurants_attributes << {
    name: Faker::Name.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  }
end

Restaurant.create!(restaurants_attributes)

# 10.times do
#   Restaurant.create!(
#     {name: Faker::Name.name,
#     address: Faker::Address.full_address,
#     phone: Faker::PhoneNumber.country_code,
#     category: ["chinese", "italian", "japanese", "french", "belgian"].sample}
#   )
# end
