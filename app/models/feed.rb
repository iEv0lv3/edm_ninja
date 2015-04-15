class Feed < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  belongs_to :post
  belongs_to :comment
  belongs_to :main_feed
  belongs_to :user_feed

  validates :user_id, presence: true
  validates :group_id, presence: true
  validates :post_id, presence: true
  validates :comment_id, presence: true
  validates :main_feed_id, presence: true
  validates :user_feed_id, presence: true
end
