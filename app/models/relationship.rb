class Relationship < ApplicationRecord
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
  validates_presence_of :follower_id, :followed_id
  # validates_numericality_of :
end
