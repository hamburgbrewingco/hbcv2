class AddCategoryToUpdates < ActiveRecord::Migration
  def change
    add_column :updates, :category, :string
  end
end
