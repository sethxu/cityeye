class RemovePicUrlFromProducts < ActiveRecord::Migration
  def up
    remove_column :products, :pic_url
  end

  def down
    add_column :products, :pic_url, :string
  end
end
