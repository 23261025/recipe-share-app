class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @user = User.new(user_params)

    if @user.save && @recipe.save
      redirect_to @recipe  # レシピ詳細ページにリダイレクト
    else
      render :new  # バリデーションエラーの場合、新規ページに戻る
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :ingredients, :steps, :image)
  end

  def user_params
    params.require(:recipe).permit(:name, :password, :password_confirmation)
  end


end


'''
class RecipesController < ApplicationController
  def index
  end

  def show
  end

  def new
  end
end
'''