class Book < ApplicationRecord
  
  has_one_attached :image
  belongs_to :user

 validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200 }


  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  
  
end
