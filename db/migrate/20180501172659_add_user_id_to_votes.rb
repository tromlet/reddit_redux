class AddUserIdToVotes < ActiveRecord::Migration[5.2]
  def change
    add_column :votes, :user_id, :integer, null: false, default: 1
  end
end
