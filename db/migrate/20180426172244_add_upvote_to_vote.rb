class AddUpvoteToVote < ActiveRecord::Migration[5.2]
  def change
    add_column :votes, :upvote, :boolean, default: false
  end
end
