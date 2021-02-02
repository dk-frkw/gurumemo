class Record < ApplicationRecord
  
  with_options presence: true do
    validates :store_name
    validates :image
    validates :station
  end

  validates :genre_id, numericality: { other_than: 1 } 
  validates :phone_number, length: { maximum: 11 }


  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

end
