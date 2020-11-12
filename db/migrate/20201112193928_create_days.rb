class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.integer :user_id
      t.integer :year
      t.integer :month
      t.integer :day

      t.timestamps
    end
  end
end
