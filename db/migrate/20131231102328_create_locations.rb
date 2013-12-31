class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :name
      t.string :vender
      t.string :website
      t.string :phone
      t.string :url

      t.timestamps
    end
  end
end
