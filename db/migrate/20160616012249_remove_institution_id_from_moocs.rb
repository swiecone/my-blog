class RemoveInstitutionIdFromMoocs < ActiveRecord::Migration
  def change
  	remove_column :moocs, :institution_id, :string
  end
end
