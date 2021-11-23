# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'destroying menu_items'
MenuItem.destroy_all
puts 'manu_items deleted'

10.times do
  MenuItem.create(
    price: rand(10..20.0).round(2),
    name: Faker::Food.dish,
    description: Faker::Food.description
  )
  puts 'creating dish'
end
