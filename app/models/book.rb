class Book < ApplicationRecord
  belongs_to :user, optional: true
  

  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200}
  
  
  
  has_one_attached :profile_image #これに変えたい

  
end
