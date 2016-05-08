class RemoveEamailFromContacts < ActiveRecord::Migration
  def change
  	remove_column :contacts, :eamail, :string
  end
end
