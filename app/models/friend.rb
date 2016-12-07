class Friend < ApplicationRecord
  belongs_to :user
  has_one :comments, as: :commentable
end
