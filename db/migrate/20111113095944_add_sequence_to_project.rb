class AddSequenceToProject < ActiveRecord::Migration
  def change
    add_column :projects, :sequence, :integer
  end
end
