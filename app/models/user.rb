class User < ApplicationRecord
    has_secure_password
    validates :username, :email, :password, presence: true
    validates :username, :email, uniqueness: {case_sensitive: false}

    has_many :calendars

    has_many :user_recipes
    has_many :recipes, through: :user_recipes
    has_many :saved_recipes, -> {where("user_recipes.saved = true")}, through: :user_recipes, source: :recipe
    has_many :created_recipes, -> {where("user_recipes.created = true")}, through: :user_recipes, source: :recipe 
    has_many :used_recipes, -> {where("user_recipes.used = true")}, through: :user_recipes, source: :recipe

    has_many :follower_follows, foreign_key: :followed_user_id, class_name: "Follow"
    has_many :followers, through: :follower_follows, source: :follower
    has_many :following_follows, foreign_key: :follower_id, class_name: "Follow"
    has_many :followings, through: :following_follows, source: :followed_user

    def follow(username)
        @user = User.find_by(username: username)
        Follow.create(follower_id: self.id, followed_user_id: @user.id)
    end
end
