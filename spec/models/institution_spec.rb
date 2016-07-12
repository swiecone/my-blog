require 'rails_helper'

 # create_table "institutions", force: :cascade do |t|
 #    t.string "name"
 #    t.string "url"
 #    t.string "thumburl"
 #  end

describe Institution do 
	it "is valid with name, url and thumbnail" do 
		expect(build(:institution)).to be_valid
	end 

	it "is invalid without name" do 
		institution = build(:institution, name: nil)
		institution.valid?	
		expect(institution.errors[:name]).to include("can't be blank", "is too short (minimum is 3 characters)")
	end 

	it "is invalid with name less than 3" do 
		institution = build(:institution, name: "AB")
		institution.valid?	
		expect(institution.errors[:name]).to include("is too short (minimum is 3 characters)")
	end 

	it "is invalid with name more than 50" do 
		long_name = "A" * 51
		institution = build(:institution, name: long_name)
		institution.valid?	
		expect(institution.errors[:name]).to include("is too long (maximum is 50 characters)")
	end 

	it "is invalid without url" do 
		institution = build(:institution, url: nil)
		institution.valid?	
		expect(institution.errors[:url]).to include("can't be blank", "is too short (minimum is 11 characters)")
	end 

	it "is invalid with url less than 11" do 
		institution = build(:institution, url: "url")
		institution.valid?	
		expect(institution.errors[:url]).to include("is too short (minimum is 11 characters)")
	end 

	it "is invalid without thumburl" do 
		institution = build(:institution, thumburl: nil)
		institution.valid?	
		expect(institution.errors[:thumburl]).to include("can't be blank", "is too short (minimum is 11 characters)")
	end 

	it "is invalid with url less than 11" do 
		institution = build(:institution, thumburl: "thumburl")
		institution.valid?	
		expect(institution.errors[:thumburl]).to include("is too short (minimum is 11 characters)")
	end 


end 
