class AddAttachmentImageCta1ToFeatures < ActiveRecord::Migration
  def self.up
    change_table :features do |t|
      t.attachment :image_cta1
    end
  end

  def self.down
    drop_attached_file :features, :image_cta1
  end
end
