require 'rails_helper'

 # create_table "institutions", force: :cascade do |t|
 #    t.string "name"
 #    t.string "url"
 #    t.string "thumburl"
 #  end

describe Institution do 
	it "is valid with name, url and thumbnail" do 
		institution = Institution.new(name: "Harvard", 
						url: "http://www.harvard.com",
						thumburl: "http://www.thanks.com")
		expect(institution).to be_valid
	end 

	it "is invalid without name" do 
		institution = Institution.new(name: nil, 
						url: "http://www.harvard.com",
						thumburl: "http://www.thanks.com")
		expect(institution).not_to be_valid
	end 

	it "is invalid with name less than 3" do 
		institution = Institution.new(name: "HA", 
						url: "http://www.harvard.com",
						thumburl: "http://www.thanks.com")
		expect(institution).not_to be_valid
	end 

	it "is invalid with name more than 20" do 
		long_name = "A" * 21
		institution = Institution.new(name: long_name, 
						url: "http://www.harvard.com",
						thumburl: "http://www.thanks.com")
		expect(institution).not_to be_valid
	end 

	it "is invalid without url" do 
		institution = Institution.new(name: "Harvard", 
						url: nil,
						thumburl: "http://www.thanks.com")
		expect(institution).not_to be_valid
	end 

	it "is invalid with url less than 11" do 
		institution = Institution.new(name: "Harvard", 
						url: "http://www",
						thumburl: "http://www.thanks.com")
		expect(institution).not_to be_valid
	end 

	it "is invalid without thumburl" do 
		institution = Institution.new(name: "Harvard", 
						url: "http://www.harvard.com",
						thumburl: nil)
		expect(institution).not_to be_valid
	end 

	it "is invalid with thumburl less than 11" do 
		institution = Institution.new(name: "Harvard", 
						url: "http://www.harvard.com",
						thumburl: "http://www")
		expect(institution).not_to be_valid
	end 


end 
