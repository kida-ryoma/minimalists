class Post < ApplicationRecord
  belongs_to :user
  
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites, source: :user
  belongs_to :category
  
  validates :content, presence: true, length: { maximum: 255 }
  #画像保存機能をあとで実装するためコメントアウト
  validates :image ,presence: true
  
  mount_uploader :image, ImageUploader
  
  
end
