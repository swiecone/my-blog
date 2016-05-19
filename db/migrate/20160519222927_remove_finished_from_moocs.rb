class RemoveFinishedFromMoocs < ActiveRecord::Migration
  def change
  	remove_column :moocs, :finished, :string
  end
end
