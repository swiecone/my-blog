class AddRatingToMoocs < ActiveRecord::Migration
  def change
  	add_column :moocs, :rating, :integer
  end
end
