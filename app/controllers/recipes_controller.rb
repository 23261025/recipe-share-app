class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    # 後で current_user と関連付ける場合はここで設定
    # @recipe.user = current_user

    if @recipe.save
      redirect_to @recipe  # レシピ詳細ページにリダイレクト
    else
      render :new  # バリデーションエラーの場合、新規ページに戻る
    end
  end

  def gohan
    @recipes = Recipe.where(category: "gohan")
  end

  def yasai
    @recipes = Recipe.where(category: "yasai")
  end

  def niku
    @recipes = Recipe.where(category: "niku")
  end

  def tamago
    @recipes = Recipe.where(category: "tamago")
  end

  def sakana
    @recipes = Recipe.where(category: "saakna")
  end

  def men
    @recipes = Recipe.where(category: "men")
  end

  def pan
    @recipes = Recipe.where(category: "pan")
  end

  def soup
    @recipes = Recipe.where(category: "soup")
  end

  def okashi
    @recipes = Recipe.where(category: "okashi")
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      :title,
      :ingredients,
      :steps,
      :image,
      :category)
  end

  def user_params
    params.require(:recipe).permit(
      :name,
      :password,
      :password_confirmation)
  end
end
