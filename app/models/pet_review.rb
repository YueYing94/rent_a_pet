class PetReview < ApplicationRecord
  belongs_to :user
  belongs_to :pet
  validates :content, :rating, presence: true
end
