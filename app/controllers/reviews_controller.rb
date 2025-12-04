class ReviewsController < ApplicationController
  before_action :set_recipe, only: [:new, :create]

  def new
    @review = @recipe.reviews.build
  end

  def create
    @review = @recipe.reviews.build(review_params)

    if @review.save
      redirect_to review_complete_path
    else
      render :new
    end
  end

  def complete
    # 完了ページのためのアクション
  end

  private

  def set_recipe
    Rails.logger.debug "Recipe ID: #{params[:recipe_id]}"
    @recipe = Recipe.find(params[:recipe_id])  # 正しいレシピIDを取得
  end

  def review_params
    params.require(:review).permit(:name, :content, :rating, :user_id)
  end
end
