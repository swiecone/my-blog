class AddInstitutionIdToMoocs < ActiveRecord::Migration
  def change
  	  	  	add_column :moocs, :institution_id, :integer
  end
end
