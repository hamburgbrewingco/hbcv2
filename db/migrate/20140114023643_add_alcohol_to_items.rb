class AddAlcoholToItems < ActiveRecord::Migration
  def change
    add_column :items, :alcohol, :integer
  end
end
