class Day < ApplicationRecord
    belongs_to :calendar
    has_many :meals, through: :day_meals
end
