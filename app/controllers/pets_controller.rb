class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:search]
  def show
    @pet = Pet.find(params[:id])
    @booking = Booking.new
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    @pet.save
    redirect_to pet_path(@pet)
  end

  def edit
    @pet = Pet.find(params[:id])
    authorize @pet
  end

  def update
    @pet = Pet.find(params[:id])
    authorize @pet
    @pet.update(pet_params)
    redirect_to pet_path(@pet)
  end

  def destroy
    @pet = Pet.find(params[:id])
    if @pet.bookings.exists?
      flash.alert = "Booking exist. Can't be deleted."
      redirect_to pet_path(@pet)
    else
      @pet.destroy
      redirect_to profile_path, status: :see_other
    end
  end

  def search
    @pets = Pet.where('lower(species) = ?', params[:query].downcase)
    @search_query = params[:query]
    @result_count = @pets.count
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :age, :species, :available, :photo)
  end
end
