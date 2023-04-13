class Picture < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  validates :title, :content,  presence: true
  validates :content, length: { in: 1..140 }
end
