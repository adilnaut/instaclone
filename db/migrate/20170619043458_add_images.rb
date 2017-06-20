class AddImages < ActiveRecord::Migration[5.0]
  def change
    add_attachment :users, :avatar
    add_attachment :posts, :image
  end
end
