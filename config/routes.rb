Rails.application.routes.draw do
  get "favorites/index"
  # ホーム
  root "pages#home"

  # マイページ
  get "/mypage", to: "pages#mypage"

  # レシピ
  resources :recipes, only: [:index, :show, :new] do
    # レビュー（/recipes/:recipe_id/reviews/new）
    resources :reviews, only: [:new, :create]
  end

  # お気に入り
  get "/favorites", to: "favorites#index"

  # 検索
  get "/search", to: "search#index"
end
