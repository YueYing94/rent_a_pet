class PetReviewsController < ApplicationController
  def create
    @pet = Pet.find(params[:pet_id])
    @pet_review = PetReview.new(review_params)
    @pet_review.pet = @pet
    @pet_review.user = current_user
    authorize @pet_review
    respond_to do |format|
      if @pet_review.save
        format.html { redirect_to pet_path(@pet) }
        format.json
      else
        format.html { render 'pets/show', status: :unprocessable_entity }
        format.json
      end
    end
  end

  def review_params
    params.require(:pet_review).permit(:content, :rating, :pet_id, :user_id)
  end
end
