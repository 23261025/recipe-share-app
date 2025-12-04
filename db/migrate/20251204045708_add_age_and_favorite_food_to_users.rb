class AddAgeAndFavoriteFoodToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :age, :integer
    add_column :users, :favorite_food, :string
  end
end
