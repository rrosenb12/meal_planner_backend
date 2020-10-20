class User < ApplicationRecord
    has_secure_password
    validates :username, :password, presence: true
    validates :username, uniqueness: {case_sensitive: false}

    has_many :user_recipes
    has_many :recipes, through: :user_recipes

    has_many :saved_recipes, -> {where("user_recipes.saved = true")}, through: :user_recipes, source: :recipe
    has_many :created_recipes, -> {where("user_recipes.created = true")}, through: :user_recipes, source: :recipe 
    has_many :used_recipes, -> {where("user_recipes.used = true")}, through: :user_recipes, source: :recipe
end
