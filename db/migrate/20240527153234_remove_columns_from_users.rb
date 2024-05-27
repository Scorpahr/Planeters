class RemoveColumnsFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :nickname
    remove_column :users, :firstname
    remove_column :users, :lastname
    remove_column :users, :password_digest
    remove_column :users, :image
  end
end
