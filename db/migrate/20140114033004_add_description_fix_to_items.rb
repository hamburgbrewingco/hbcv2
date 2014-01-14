class AddDescriptionFixToItems < ActiveRecord::Migration
  def change
    add_column :items, :description_fix, :text
  end
end
