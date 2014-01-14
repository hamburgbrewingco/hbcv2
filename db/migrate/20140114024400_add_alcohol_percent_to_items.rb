class AddAlcoholPercentToItems < ActiveRecord::Migration
  def change
    add_column :items, :alcohol_percent, :string
  end
end
