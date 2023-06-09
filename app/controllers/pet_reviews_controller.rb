class PetReviewsController < ApplicationController
  def create
    @pet = Pet.find(params[:pet_id])
    @pet_review = PetReview.new(review_params)
    @pet_review.pet = @pet
    @pet_review.save
    authorize @pet_review
    redirect_to pet_path(@pet)
  end

  def review_params
    params.require(:pet_review).permit(:content, :rating, :pet_id)
  end
end
