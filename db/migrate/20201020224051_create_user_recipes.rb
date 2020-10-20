class CreateUserRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :user_recipes do |t|
      t.integer :user_id
      t.integer :recipe_id
      t.boolean :saved, default: false
      t.boolean :created, default: false
      t.boolean :used, default: false

      t.timestamps
    end
  end
end
