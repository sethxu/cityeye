class AddPictureToProducts < ActiveRecord::Migration
  def change
    add_column :products, :image_file_name, :string
    add_column :products, :image_content_type, :string
    add_column :products, :image_file_size, :integer
    add_column :products, :image_update_at, :datetime
  end
end
