class AddCategoryToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :category, :string
  end
end
