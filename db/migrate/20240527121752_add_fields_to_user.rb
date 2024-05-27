class AddFieldsToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :nickname, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :password_digest, :string
    add_column :users, :image, :string
  end
end
