class AddSequenceToCertificate < ActiveRecord::Migration
  def change
    add_column :certificates, :sequence, :integer
  end
end
