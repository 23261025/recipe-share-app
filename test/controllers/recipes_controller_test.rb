require "test_helper"

class RecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe = recipes(:one)  # fixtures がある場合
  end

  test "should get index" do
    get recipes_path
    assert_response :success
  end

  test "should get show" do
    get recipe_path(@recipe)
    assert_response :success
  end

  test "should get new" do
    get new_recipe_path
    assert_response :success
  end
end
