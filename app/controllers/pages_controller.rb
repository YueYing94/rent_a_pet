class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only:[:home]
  def home

    if current_user.present?
      all_pet = Pet.all
      @pets = []
      all_pet.each do |pet|
        @pets << pet if pet.user_id != current_user.id
        end
      @pets
    else
      @pets = Pet.all
    end

    @users = User.all
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end

  end
end
