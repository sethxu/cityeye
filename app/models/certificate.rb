class Certificate < ActiveRecord::Base
  paginates_per 10
  has_attached_file :image, :styles => { :medium => "150x214>", :thumb => "50x71>" }
  attr_accessor :delete_image
  before_validation { self.image = nil if self.delete_image == '1' }
end
