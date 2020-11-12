# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Recipe.destroy_all
# User.destroy_all 
# UserRecipe.destroy_all
# Follow.destroy_all
# Meal.destroy_all

## PERMANENT DO NOT DELETE ##

puts "creating meals"
Meal.create(meal_name: "Breakfast")
Meal.create(meal_name: "Lunch")
Meal.create(meal_name: "Dinner")

puts "creating calendars"
(Date.today...Date.new(2022, 12, 31)).each do |d|
    Calendar.create(year: d.year, month: d.month, day: d.day, day_of_week: d.wday)
end

## pretend seed data starts here ##


# puts "creating users"
# 5.times do
#     User.create(username: Faker::Name.first_name, password: Faker::Code.ean, email: Faker::Commerce.promotion_code)
# end
# puts "creating users"
# rebecca = User.create(username: "rebecca", password: Faker::Code.ean, email: Faker::Commerce.promotion_code)
# haley = User.create(username: "haley", password: Faker::Code.ean, email: Faker::Commerce.promotion_code)
# amelia = User.create(username: "amelia", password: Faker::Code.ean, email: Faker::Commerce.promotion_code)

# puts "creating recipes"
# 5.times do
#     Recipe.create(title: Faker::Food.dish)
# end

# puts "creating user recipes"
# 5.times do
#     UserRecipe.create(user_id: User.all.sample.id, recipe_id: Recipe.all.sample.id, saved: true, created: true, used: true)
# end

# # rebecca = User.create(username: "rebecca", password: Faker::Code.ean, email: Faker::Commerce.promotion_code)
# # haley = User.create(username: "haley", password: Faker::Code.ean, email: Faker::Commerce.promotion_code)
# # amelia = User.create(username: "amelia", password: Faker::Code.ean, email: Faker::Commerce.promotion_code)

# amelia.follow("rebecca")
# haley.follow("rebecca")
# rebecca.follow("haley")
# rebecca.follow("amelia")
