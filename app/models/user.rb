class User < ApplicationRecord
  has_many :pets, dependent: :destroy
  has_many :bookings
  has_many :pet_reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
