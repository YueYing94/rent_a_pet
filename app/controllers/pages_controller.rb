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
  end
end
