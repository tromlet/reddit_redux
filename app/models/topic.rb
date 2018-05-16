class Topic < ApplicationRecord
  has_many :votes, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :user

  def vote_tally
    count = 0

    self.votes.each do |vote|
      if vote.upvote
        count += 1
      else
        count -= 1
      end
    end

    return count

  end
end
