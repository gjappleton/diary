class User < ApplicationRecord
  has_many :posts
  has_many :friendships
  has_many :friends, :through => :friendships
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  before_update :rand_user

  def count_posts
    posts.count
  end

  def friend1
    "Ben"
  end

  def rand_user
    self.friend_id = User.all.sample.id
    print "random user"
  end
end
