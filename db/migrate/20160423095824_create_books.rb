class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :title
      t.string :shortsummary
      t.text :longsummary

      t.timestamps null: false
    end
  end
end
