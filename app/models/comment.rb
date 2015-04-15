class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  has_many :feeds

  validates :user_id, presence: true
  validates :post_id, presence: true
  validates :body, presence: true
end
