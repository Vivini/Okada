class User < ApplicationRecord
  has_many :bookings
  has_many :bikes
  validates :user_name, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
end
