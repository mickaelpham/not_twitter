class User < ActiveRecord::Base
  has_secure_password

  validates :username, presence: true

  validates :email, presence: true, uniqueness: true

  has_many :tweets

  has_many :followers, foreign_key: 'followed_id'

  has_many :following, class_name: 'Follower', foreign_key: 'follower_id'
end
