class Follower < ActiveRecord::Base
  belongs_to :follower,  class_name: 'User', counter_cache: :following_count
  belongs_to :following, class_name: 'User', counter_cache: :followers_count
end
