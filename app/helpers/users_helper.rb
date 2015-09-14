module UsersHelper
  def is_following?(user_id)
    current_user.active_relationships.to_set.map(&:following_id).include?(user_id)
  end
end
