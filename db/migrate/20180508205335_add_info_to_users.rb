class AddInfoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string, null: false, default: ''
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :signature, :string
  end
end
