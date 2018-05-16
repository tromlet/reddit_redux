module TopicsHelper
  def user_voted?(topic, value)
    return false if current_user.nil?
    vote = topic.votes.find_by_user_id(current_user.id)
    return false if vote.nil?
    return vote.upvote == value
  end
end
