class RemoveUrlmoonFromMoocs < ActiveRecord::Migration
  def change
  	remove_column :moocs, :urltomoon, :string 
  end
end
