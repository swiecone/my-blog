class AddCertificationToMoocs < ActiveRecord::Migration
  def change
  	  	add_column :moocs, :certification, :string
  end
end
