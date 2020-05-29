class Bike < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  validates :model, presence: true
  validates :bike_type, presence: true
  validates :capacity, presence: true
  validates :price, presence: true
  validates :address, presence: true
  #validates :img_url, presence: true
end
