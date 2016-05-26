class AddMoocRefToPlatforms < ActiveRecord::Migration
  def change
    add_reference :platforms, :mooc, index: true, foreign_key: true
  end
end
