# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "📃 Seeding data..."

5.times do
  user =
    User.create(
      username: Faker::GreekPhilosophers.name.downcase.gsub(/\W/, "_")
    )

  rand (3..5).times do
    user.products.create(
      name: Faker::Lorem.sentence,
      price: Faker::Number.number(3),
      imageurl: Faker::Avatar.image,
      description: Faker::Lorem.paragraph
    )
  end
end

puts "✅ Done seeding"
