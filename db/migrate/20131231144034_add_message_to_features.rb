class AddMessageToFeatures < ActiveRecord::Migration
  def change
    add_column :features, :message, :string
  end
end
