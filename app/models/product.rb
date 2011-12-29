class Product < ActiveRecord::Base
  paginates_per 4
  belongs_to :category
  has_attached_file :image, :styles => { :medium => "100x100>", :thumb => "50x50>" }
  attr_accessor :delete_image
  before_validation { self.image = nil if self.delete_image == '1' }
end
