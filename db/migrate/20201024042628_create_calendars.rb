class CreateCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :calendars do |t|
      t.integer :year
      t.integer :month
      t.integer :day
      t.integer :day_of_week

      t.timestamps
    end
  end
end
