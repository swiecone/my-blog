class RemoveMoocidFromPlatforms < ActiveRecord::Migration
  def change
    remove_column :platforms, :mooc_id, :integer
  end
end
