class AddFinishedDateToMoocs < ActiveRecord::Migration
  def change
    add_column :moocs, :finish_date, :date
  end
end
