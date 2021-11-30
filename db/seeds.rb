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
require "open-uri"

puts 'destrouying orders'
Order.destroy_all

#User.create!(email: "test@test.com", password:"123456")
puts "created user"

burrito = Item.new(
  price: 9,
  name: "Burrito",
  description: "Burritos are filled with beef, or pork, and includeingredients such as rice, cooked beans, vegetables such as lettuce and tomatoes, cheese, and condiments",
  )
  file = URI.open("https://media.istockphoto.com/photos/sausage-and-egg-breakfast-burrito-picture-id1303481589?b=1&k=20&m=1303481589&s=170667a&w=0&h=qOuCRxV7QjXdTNcJC_xF1oPvDARWQI6ayI3L3qcenc0=")
  burrito.photo.attach(io: file, filename: "burrito_dish.jpg", content_type: 'image/jpg')
  burrito.save
  puts 'creating a dish'

empanada = Item.new(
  price: 8.50,
  name: "Empanada",
  description: "Stuffed bread baked or fried in many countries of Latin America and the south of Europe. Empanada is made by folding a dough or bread patty around the stuffing.",
  )
  file = URI.open("https://media.istockphoto.com/photos/homemade-stuffed-chicken-empanadas-picture-id521954007?b=1&k=20&m=521954007&s=170667a&w=0&h=KM_MnqxKXqIunKJZdBcLHR1uzqw7x6f0YvZivodaLkQ=")
  empanada.photo.attach(io: file, filename: "empanada_dish.jpg", content_type: 'image/jpg')
  empanada.save

quesadilla = Item.new(
  price: 7.80,
  name: "Quesadilla",
  description: "Made with a corn tortilla that was warmed on a griddle, filled with cheese and meat, and then folded over to be eaten by hand.",
  )
  file = URI.open("https://media.istockphoto.com/photos/grilled-chicken-and-pesto-quesadilla-with-red-peppers-and-mozzarella-picture-id1267723486?b=1&k=20&m=1267723486&s=170667a&w=0&h=_G2EIxaZ8N0R89qzEQ9YNi6CcTqame28eT6TQnVrP4E=")
  quesadilla.photo.attach(io: file, filename: "quesadilla_dish.jpg", content_type: 'image/jpg')
  quesadilla.save

tamale = Item.new(
  price: 7.50,
  name: "Tamale",
  description: "Made of masa or dough, which is steamed in a corn leaf or banana leaf. It is filled with meats, cheeses, fruits, vegetables ",
  )
  file = URI.open("https://media.istockphoto.com/photos/beef-tamales-picture-id490484110?b=1&k=20&m=490484110&s=170667a&w=0&h=k5ivKWwUcxrgTHW7YGeo_X4MpzgboesQzykdg2alhoE=")
  tamale.photo.attach(io: file, filename: "tamale_dish.jpg", content_type: 'image/jpg')
  tamale.save

margarita = Item.new(
  price: 6,
  name: "Margarita",
  description: "Cocktail consisting of tequila, orange liqueur, and lime juice often served with salt on the rim of the glass.",
  )
  file = URI.open("https://media.istockphoto.com/photos/margarita-picture-id157612614?b=1&k=20&m=157612614&s=170667a&w=0&h=AqAAJihSaxj5VPl6JJ4fLHvm6YDUZe0xBpZ-ViTHSio=")
  margarita.photo.attach(io: file, filename: "margarita_drink.jpg", content_type: 'image/jpg')
  margarita.save

michelada = Item.new(
  price: 6.50,
  name: "Michelada",
  description: "Drink made with beer, lime juice, assorted sauces (often chili-based), spices, tomato juice, and chili peppers.",
  )
  file = URI.open("https://media.istockphoto.com/photos/michelada-beer-with-tomato-juice-clamato-with-beer-on-wooden-table-picture-id1312709148?b=1&k=20&m=1312709148&s=170667a&w=0&h=9SE02mNleBju6U8aD2MLE4U6UUv4q8eDO8NNuzKV7nM=")
  michelada.photo.attach(io: file, filename: "michelada_drink.jpg", content_type: 'image/jpg')
  michelada.save

churro = Item.new(
  price: 4,
  name: "Churro",
  description: "Deep-fried dough coated in cinnamon sugar and dipped in chocolate or caramel",
  )
  file = URI.open("https://images.unsplash.com/photo-1581911823256-694b27332788?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2h1cnJvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
  churro.photo.attach(io: file, filename: "churro_dessert.jpg", content_type: 'image/jpg')
  churro.save



# add a new column item model called url, string
# run db:migrate
# add erb in index.html inside
