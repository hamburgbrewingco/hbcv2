class Beer < ActiveRecord::Base

	self.inheritance_column = nil
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
