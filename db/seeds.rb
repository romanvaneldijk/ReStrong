# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'destroying items'
Item.destroy_all
puts 'items deleted'

food_images = ["https://images.unsplash.com/photo-1551183053-bf91a1d81141?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHBhc3RhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60","https://media.istockphoto.com/photos/grilled-chicken-meat-and-fresh-vegetable-salad-of-tomato-avocado-and-picture-id1295633127?b=1&k=20&m=1295633127&s=170667a&w=0&h=VDkBqjm0RShberDPMJ_L-LHX1rZ5v8yNvq0I0UxXquM=","https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60","https://media.istockphoto.com/photos/trio-of-tasty-chocolate-vanilla-and-strawberry-flavored-frozen-in-a-picture-id1300696359?b=1&k=20&m=1300696359&s=170667a&w=0&h=OlbF5gEFchaHTBQ-qjTQnYQ6ApJeCklAf32Evy1OMjg=","https://media.istockphoto.com/photos/barbecue-taco-picture-id1269723824?b=1&k=20&m=1269723824&s=170667a&w=0&h=BvbdGGgEYiRBmpNo4FuVFRDYZU7h7fb-SpHYv_KSsMY=","https://media.istockphoto.com/photos/homemade-stuffed-chicken-empanadas-picture-id521954007?b=1&k=20&m=521954007&s=170667a&w=0&h=KM_MnqxKXqIunKJZdBcLHR1uzqw7x6f0YvZivodaLkQ=","https://media.istockphoto.com/photos/sausage-and-egg-breakfast-burrito-picture-id1303481589?b=1&k=20&m=1303481589&s=170667a&w=0&h=qOuCRxV7QjXdTNcJC_xF1oPvDARWQI6ayI3L3qcenc0=","https://media.istockphoto.com/photos/cheesy-chicken-quesadilla-picture-id1172292804?b=1&k=20&m=1172292804&s=170667a&w=0&h=aCVLgkBjouNeHnYdzPaC4tfZuoF1dIPB7wRcyHaJnJk=","https://media.istockphoto.com/photos/chicken-teriyaki-picture-id1257187758?b=1&k=20&m=1257187758&s=170667a&w=0&h=fpUeYCmQqORIdfk7_ew6Wa7k-fI20GLe0Bbmd9OGc6g="]
#User.create!(email: "test@test.com", password:"123456")
puts "created user"

10.times do
  Item.create(
    price: rand(10..20.0).round(2),
    name: Faker::Food.dish,
    description: Faker::Food.description,
    imageurl: food_images.sample
  )
  # file = URI.open(food_images.sample)
  puts 'creating dish'
end

# add a new column item model called url, string
# run db:migrate
# add erb in index.html inside
