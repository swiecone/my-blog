class RemoveLicenceIdFromCetificate < ActiveRecord::Migration
  change_table :certificates do |t|
  		t.rename :licence_id, :licenceid
  end
end
