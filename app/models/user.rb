class User < ActiveRecord::Base
  has_secure_password

  validates :username, presence: true

  validates :email, presence: true, uniqueness: true

  has_many :tweets

  has_many :passive_relationships, class_name: 'Follower', foreign_key: 'following_id'
  has_many :followers, class_name: 'User', through: :passive_relationships

  has_many :active_relationships, class_name: 'Follower', foreign_key: 'follower_id'
  has_many :following, class_name: 'User', through: :active_relationships
end
