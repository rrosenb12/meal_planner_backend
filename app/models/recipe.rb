class Recipe < ApplicationRecord
    has_many :user_recipes
    has_many :users, through: :user_recipes

    has_many :saved_by_users, -> {where("user_recipes.saved = true")}, through: :user_recipes, source: :user
    has_many :authors, -> {where("user_recipes.created = true")}, through: :user_recipes, source: :user
    has_many :used_by_users, -> {where("user_recipes.used = true")}, through: :user_recipes, source: :user

    has_many :meal_recipes
    has_many :meals, through: :meal_recipes
end
