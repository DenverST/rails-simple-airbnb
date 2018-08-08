# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "lets seeeeeeeeed"

10.times do
 flat = Flat.new(name: Faker::HarryPotter.character, address: Faker::HarryPotter.location, description: Faker::BackToTheFuture.quote, price_per_night: rand(150..750), number_of_guests: rand(1..10) )
 flat.save!
end

puts "seed has been seeeeeeeeeded"
