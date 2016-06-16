class RemoveUniversityFromMoocs < ActiveRecord::Migration
  def change
  	remove_column :moocs, :university, :string
  end
end
