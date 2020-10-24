# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.destroy_all
User.destroy_all 
UserRecipe.destroy_all

# puts "creating users"
# 5.times do
#     User.create(username: Faker::Name.first_name, password: Faker::Code.ean, email: Faker::Commerce.promotion_code)
# end

# puts "creating recipes"
# 5.times do
#     Recipe.create(title: Faker::Food.dish)
# end

# puts "creating user recipes"
# 5.times do
#     UserRecipe.create(user_id: User.all.sample.id, recipe_id: Recipe.all.sample.id, saved: false, created: true, used: true)
# end

rebecca = User.create(username: "rebecca", password: Faker::Code.ean, email: Faker::Commerce.promotion_code)
haley = User.create(username: "haley", password: Faker::Code.ean, email: Faker::Commerce.promotion_code)
amelia = User.create(username: "amelia", password: Faker::Code.ean, email: Faker::Commerce.promotion_code)

amelia.follow("rebecca")
haley.follow("rebecca")
rebecca.follow("haley")
rebecca.follow("amelia")
