require 'rails_helper'

 # create_table "platforms", force: :cascade do |t|
 #    t.string   "name"
 #    t.string   "url"
 #    t.datetime "created_at", null: false
 #    t.datetime "updated_at", null: false
 #  end

describe Platform do
  it "is valid with name and url" do 
  	platform = Platform.new(name: "Coursera",
  							url: "https://www.coursera.org/")
    expect(platform).to be_valid
  end 

   it "is invalid without name"
   it "is invalid without url"
end
