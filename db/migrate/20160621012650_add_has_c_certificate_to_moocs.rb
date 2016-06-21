class AddHasCCertificateToMoocs < ActiveRecord::Migration
  def change
  	  	  	  	add_column :moocs, :has_certification, :boolean
  	  	  	  	add_column :moocs, :certificate_id, :integer
  end
end
