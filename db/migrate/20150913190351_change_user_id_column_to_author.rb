class ChangeUserIdColumnToAuthor < ActiveRecord::Migration
  def change
    rename_column :tweets, :user_id, :author_id
  end
end
