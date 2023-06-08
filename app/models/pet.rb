class Pet < ApplicationRecord
  has_many :pet_reviews, dependent: :destroy
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :name, :species, :photo, presence: true
end
