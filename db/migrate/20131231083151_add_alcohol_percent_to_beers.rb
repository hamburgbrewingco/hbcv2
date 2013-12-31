class AddAlcoholPercentToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :alcohol_percent, :float
  end
end
