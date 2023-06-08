require "test_helper"

class PetReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pet_reviews_new_url
    assert_response :success
  end
end
