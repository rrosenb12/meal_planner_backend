class Meal < ApplicationRecord
    has_many :day_meals
    has_many :days, through: :meal_recipes

    has_many :meal_recipes
    has_many :recipes, through: :meal_recipes
end
