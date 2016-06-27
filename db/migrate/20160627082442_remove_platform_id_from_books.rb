class RemovePlatformIdFromBooks < ActiveRecord::Migration
  def change
  	  	  	  	remove_column :books, :platform_id, :integer
  end
end
