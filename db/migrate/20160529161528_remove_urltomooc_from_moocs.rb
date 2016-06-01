class RemoveUrltomoocFromMoocs < ActiveRecord::Migration
  def change
    remove_column :moocs, :urltomooc, :string
    add_column :moocs, :url, :string
  end
end
