class AddPlatformidToMoocs < ActiveRecord::Migration
  def change
    add_column :moocs, :platform_id, :integer
  end
end
