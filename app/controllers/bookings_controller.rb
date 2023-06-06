class BookingsController < ApplicationController
  def create
    @pet = Pet.find(params[:pet_id])
    authorize @pet
    if @pet.user == current_user
      flash.alert = "Cannot book your own pet."
      redirect_to pet_path(@pet)
    else
      @booking = Booking.new(booking_params)
      @booking.pet = @pet
      @booking.user = current_user
      @booking.save
      redirect_to profile_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :pet_id)
  end
end
