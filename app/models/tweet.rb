class Tweet < ActiveRecord::Base
  belongs_to :author, class_name: 'User', counter_cache: true

  validates :content, presence: true, length: { within: 1..140 }
end
