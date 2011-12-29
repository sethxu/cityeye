class Project < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "126x126>", :thumb => "50x50>" }
  attr_accessor :delete_image
  before_validation { self.image = nil if self.delete_image == '1' }
end
