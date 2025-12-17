require "test_helper"

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe = recipes(:one)  # fixtures がある場合
  end

  test "should get new" do
    get new_recipe_review_path(@recipe)
    assert_response :success
  end
end
