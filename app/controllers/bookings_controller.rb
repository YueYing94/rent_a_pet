class BookingsController < ApplicationController
  def create
    @pet = Pet.find(params[:pet_id])
    @booking = Booking.new(booking_params)
    @booking.pet = @pet
    @booking.user = current_user
    @booking.save
    redirect_to pets_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :pet_id)
  end
end
