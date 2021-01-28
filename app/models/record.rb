class Record < ApplicationRecord

  validates :store_name, presence: true
  validates :station, presence: true
  validates :image, presence: true

  validates :genre_id, numericality: { other_than: 1 } 
  validates :phone_number, length: { maximum: 11 }


  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

end
