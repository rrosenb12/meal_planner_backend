class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.integer :calendar_id
      t.string :day_of_the_week

      t.timestamps
    end
  end
end
