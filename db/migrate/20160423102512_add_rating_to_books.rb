class AddRatingToBooks < ActiveRecord::Migration
  def change
    add_column :books, :rating, :integer
    add_column :books, :read, :date
  end
end
