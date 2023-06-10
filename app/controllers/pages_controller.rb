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

    if current_user.present?
      @users = User.where.not(id: current_user.id)
    else
      @users = User.all
    end

    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {user: user})
      }
    end

  end
end
