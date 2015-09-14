class CreateFollowers < ActiveRecord::Migration
  def change
    create_table :followers, { id: false } do |t|
      t.belongs_to :follower, index: true, foreign_key: true
      t.belongs_to :followed, index: true, foreign_key: true

      t.timestamps null: false
    end

    add_index :followers, [:follower_id, :followed_id], unique: true
  end
end
