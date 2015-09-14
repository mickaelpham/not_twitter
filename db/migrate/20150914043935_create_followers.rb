class CreateFollowers < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      t.belongs_to :follower,  index: true, foreign_key: true
      t.belongs_to :following, index: true, foreign_key: true

      t.timestamps null: false
    end

    add_index :followers, [:follower_id, :following_id], unique: true
  end
end
