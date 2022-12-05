# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# puts "📃 Seeding data..."

# 5.times do
#   user =
#     User.create(
#       username: Faker::GreekPhilosophers.name.downcase.gsub(/\W/, "_")
#     )

#   rand (3..5).times do
#     user.products.create(
#       name: Faker::Lorem.sentence,
#       price: Faker::Number.number(3),
#       imageurl: Faker::Avatar.image,
#       description: Faker::Lorem.paragraph
#     )
#   end
# end

# puts "✅ Done seeding"

# puts "📃 Seeding data..."

# 5.times do
#   user = User.create(username: Faker::Internet.user_name)

#   rand(3..5).times do
#     user.products.create(
#       name: Faker::Beer.name,
#       price: Faker::Number.number(3),
#       imageurl: Faker::Avatar.image,
#       description: Faker::Lorem.paragraph
#     )
#   end
# end

users =
  User.create(
    [
      { username: "person", email: "person@gmail.com" },
      { username: "person1", email: "person1@gmail.com" },
      { username: "person2", email: "person2@gmail.com" }
    ]
  )

products =
  Product.create(
    [
      {
        name: "Product one",
        price: 345,
        description: "good product 1 hellelel",
        imageurl: "hshshshhs",
        user_id: 1
      },
      {
        name: "Product two",
        price: 200,
        description: "good product 2 hellelel",
        imageurl: "hshshshhs",
        user_id: 2
      },
      {
        name: "Product three",
        price: 100,
        description: "good product 3 hellelel",
        imageurl: "hshshshhs",
        user_id: 3
      }
    ]
  )

puts "✅ Done seeding"
