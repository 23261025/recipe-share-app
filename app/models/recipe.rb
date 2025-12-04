class Recipe < ApplicationRecord
  has_many :reviews, dependent: :destroy  # レシピに紐づくレビューを取得できるようにする

  # その他の設定（バリデーションやメソッドなど）
end


