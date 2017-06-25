class Post < ApplicationRecord
  has_attached_file :image, styles: {thumbnail: "60x60", large:"300x300"}

  has_many :likes, dependent: :destroy

  validates :description, length: {maximum: 255}
  validates_attachment :image, presence: true, content_type: {content_type: ["image/png", "image/jpeg"]}

  belongs_to :user, dependent: :destroy

  default_scope -> {order('created_at DESC')}
end
