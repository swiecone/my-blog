class CreateMoocs < ActiveRecord::Migration
  def change
    create_table :moocs do |t|
      t.string :title
      t.string :platform
      t.string :university
      t.string :shortsummary
      t.text :longsummary
      t.string :finished
      t.string :status
      t.string :urltomoon

      t.timestamps null: false
    end
  end
end
