Rails.application.routes.draw do
  # ホーム
  root "pages#home"

  # マイページ
  get "/mypage", to: "pages#mypage"

resources :recipes do
  collection do
    get :gohan
    get :yasai
    get :niku
    get :tamago
    get :sakana
    get :men
    get :pan
    get :soup
    get :okashi
  end

  resources :reviews, only: [ :new, :create ]
end

  ""'
  # レシピ
  resources :recipes, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end

  resources :recipes do
    collection do
      get :gohan
      get :yasai
      get :niku
      get :tamago
      get :sakana
      get :men
      get :pan
      get :soup
      get :okashi
    end
  end
  '""


  # お気に入り
  get "/favorites", to: "favorites#index"

  # 検索
  get "/search", to: "search#index"

  # ユーザー登録
  resources :users, only: [ :new, :create ]

  # ユーザー登録完了ページ
  get "/users/complete", to: "users#complete", as: "user_complete"

  # ユーザー登録失敗エラーページ
  get "users/error", to: "users#error", as: "user_error"


  # レビュー登録完了
  get "/reviews/complete", to: "reviews#complete", as: "review_complete"
end
