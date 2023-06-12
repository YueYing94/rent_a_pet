if @pet_review.persisted?
  json.form render(partial: "pet_reviews/form", formats: :html, locals: {pet: @pet, pet_review: PetReview.new})
  json.inserted_item render(partial: "pets/pet_review", formats: :html, locals: {pet_review: @pet_review})
else
  json.form render(partial: "pet_reviews/form", formats: :html, locals: {pet: @pet, pet_review: @pet_review})
end
