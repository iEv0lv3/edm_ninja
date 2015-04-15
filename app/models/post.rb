class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :feeds

  validates :user_id, presence: true
  validates :body, presence: true
  validates :post_love, presence: true
end
