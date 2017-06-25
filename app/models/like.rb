class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates_presence_of :user_id, :post_id
end
