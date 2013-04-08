class Micropost < ActiveRecord::Base
  attr_accessible :content
  default_scope order: 'microposts.created_at DESC'

  belongs_to :user

  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
<<<<<<< HEAD

  def self.from_users_followed_by(user)
    followed_user_ids = "SELECT followed_id FROM relationships
                         WHERE follower_id = :user_id"
    where("user_id IN (#{followed_user_ids}) OR user_id = :user_id",
          user_id: user.id)
  end
=======
>>>>>>> 46e06369fe494e2a14075571b85ce626d13e2ea4
end