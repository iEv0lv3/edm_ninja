class UserFeed < ActiveRecord::Base
  belongs_to :user
  has_many :groups, through: :feeds
  has_many :posts, through: :feeds
  has_many :comments, through: :feeds

  validates :user_id, presence: true
end
