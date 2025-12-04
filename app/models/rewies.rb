class Review < ApplicationRecord
  belongs_to :recipe  # レビューがどのレシピに属するかを定義

  # その他の設定（バリデーションやメソッドなど）
end
