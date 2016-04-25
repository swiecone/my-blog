class AddThumbUrlToBooks < ActiveRecord::Migration
  def change
  	    add_column :books, :thumburl, :string
  end
end
