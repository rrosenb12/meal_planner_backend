class CreateMealRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_recipes do |t|
      t.integer :recipe_id
      t.integer :meal_id

      t.timestamps
    end
  end
end
