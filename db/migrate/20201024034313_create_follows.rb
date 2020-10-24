class CreateFollows < ActiveRecord::Migration[6.0]
  def change
    create_table :follows do |t|
      t.integer :follower_id
      t.integer :followed_user_id
      t.index [:follower_id, :followed_user_id]
      t.index [:followed_user_id, :follower_id]

      t.timestamps
    end
  end
end
