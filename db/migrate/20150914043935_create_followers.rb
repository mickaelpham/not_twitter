class CreateFollowers < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      t.integer :follower_id,  index: true, foreign_key: true
      t.integer :following_id, index: true, foreign_key: true

      t.timestamps null: false
    end

    add_index :followers, [:follower_id, :following_id], unique: true
  end
end
