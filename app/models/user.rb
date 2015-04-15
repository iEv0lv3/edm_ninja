class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :user_feed
  has_many :groups, through: :group_memberships
  has_many :posts
  has_many :comments
  has_many :feeds

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true
  validates :user_type, presence: true

  def admin?
    user_type == "admin"
  end

  def member?
    user_type == "member"
  end

  def moderator?
    user_type == "moderator"
  end

end
