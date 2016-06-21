class CreateCertificate < ActiveRecord::Migration
  def change
    create_table :certificates do |t|
      t.string :name
      t.string :url
      t.string :licence_id
    end
  end
end
