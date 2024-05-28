class Article < ApplicationRecord
  has_one_attached :photo
  has_many_attached :images

  validates :photo, presence: true
end
