class RemoveCertificationFromMoocs < ActiveRecord::Migration
  def change
  	  	  	remove_column :moocs, :certificates_id, :integer
  end
end
