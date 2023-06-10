class Pet < ApplicationRecord
  has_many :pet_reviews, dependent: :destroy
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :name, :species, :photo, presence: true

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
