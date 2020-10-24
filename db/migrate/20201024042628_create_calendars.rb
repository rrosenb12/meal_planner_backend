class CreateCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :calendars do |t|
      t.string :month
      t.integer :user_id

      t.timestamps
    end
  end
end
