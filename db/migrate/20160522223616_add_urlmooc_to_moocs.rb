class AddUrlmoocToMoocs < ActiveRecord::Migration
  def change
  	  add_column :moocs, :urltomooc, :string 

  end
end
