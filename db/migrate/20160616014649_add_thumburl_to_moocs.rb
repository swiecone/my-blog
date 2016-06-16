class AddThumburlToMoocs < ActiveRecord::Migration
  def change
  	add_column :moocs, :thumburl, :string
  end
end
