class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :sequence
      t.string :pic_url
      t.boolean :display
      t.text :intro
      t.text :detail
      t.references :category

      t.timestamps
    end
    add_index :products, :category_id
  end
end
