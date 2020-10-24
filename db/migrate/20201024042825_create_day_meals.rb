class CreateDayMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :day_meals do |t|
      t.integer :day_id
      t.integer :meal_id

      t.timestamps
    end
  end
end
