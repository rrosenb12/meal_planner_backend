class Calendar < ApplicationRecord
    has_many :calendar_meals
    has_many :meals, through: :calendar_meals
end
