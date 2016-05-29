class AddPlatformidBooks < ActiveRecord::Migration
  def change
    add_column :books, :platform_id, :integer
  end
end
