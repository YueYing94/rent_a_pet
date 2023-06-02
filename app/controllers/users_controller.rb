class UsersController < ApplicationController
  def profile
    @all_pets = Pet.all
    @pets = []
    @all_pets.each do |pet|
      @pets << pet if pet.user_id == current_user.id
    end
    @pets
  end
end
