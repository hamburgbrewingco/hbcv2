class CreateCta < ActiveRecord::Migration
  def change
    create_table :cta do |t|
      t.string :cta1_header
      t.string :cta1_caption
      t.string :cta1_url
      t.string :cta1_button
      t.string :cta2_header
      t.string :cta2_caption
      t.string :cta2_url
      t.string :cta2_button
      t.string :cta3_header
      t.string :cta3_caption
      t.string :cta3_url
      t.string :cta3_button

      t.timestamps
    end
  end
end
