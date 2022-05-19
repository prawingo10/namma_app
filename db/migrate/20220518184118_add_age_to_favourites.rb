class AddAgeToFavourites < ActiveRecord::Migration[6.0]
  def change
    add_column :favourites, :age, :boolean
  end
end
