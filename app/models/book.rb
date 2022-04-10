class Book < ApplicationRecord
  belongs_to :user, optional: true
  

  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200}
  
  attachment :profile_image
  
  has_one_attached :profile_image

  
end
