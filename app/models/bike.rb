class Bike < ApplicationRecord
  belongs_to :user
  validates :model, presence: true
  validates :bike_type, presence: true
  validates :capacity, presence: true
end
