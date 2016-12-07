class User < ApplicationRecord
  has_many :posts
  has_many :friendships
  has_many :friends, :through => :friendships
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def count_posts
    posts.count
  end

  def friend1
    "Ben"
  end

  def rand_user
    User.all.sample
  end
end
