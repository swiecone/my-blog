class RemovePlatformFromMoocs < ActiveRecord::Migration
  def change
    remove_column :moocs, :platform, :string
  end
end
