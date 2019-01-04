# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'
require_relative '../config/environment'

Restaurant.destroy_all
User.destroy_all


50.times do
  Restaurant.create(name: Faker::Company.name, food_type:["american", "asian", "texan", "chinese", "italian"].sample, bar: [true, false].sample, location:["manhattan", "brooklyn","queens", "bronx"].sample,  image:"https://j6p9k2g4.stackpathcdn.com/wp-content/uploads/2018/04/41993-das-loft-sofitel-19to1.jpeg")
end

10.times do
  User.create(name: Faker::Name.name, bio: Faker::HarryPotter.quote)
end

70.times do
  Review.create(user_id:User.all.sample.id, restaurant_id:Restaurant.all.sample.id, stars:rand(1..5), recommend:[true, false].sample)
end
