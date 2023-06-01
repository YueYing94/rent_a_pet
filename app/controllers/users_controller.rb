class UsersController < ApplicationController
  def profile
    @pets = Pet.all
  end
end
