class Record < ApplicationRecord

  validates :store_name, presence: true
  validates :genre_id, presence: true
  validates :score, presence: true
  validates :station, presence: true
  validates :image, presence: true

  belongs_to :user
  has_one_attached :image

end
