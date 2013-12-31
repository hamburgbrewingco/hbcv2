class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.text :description
      t.string :name
      t.string :type
      t.integer :alcohol

      t.timestamps
    end
  end
end
