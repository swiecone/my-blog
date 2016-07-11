require 'rails_helper'

describe Certificate do 
	it "is valid with name, url and licenceid" do 
		expect(build(:certificate)).to be_valid
	end 

	it "is invalid without name" do 
		certificate = build(:certificate, name: nil)
		certificate.valid?
		expect(certificate.errors[:name]).to include("can't be blank", "is too short (minimum is 3 characters)")
	end 

	it "is invalid with name less than 3" do 
		certificate = build(:certificate, name: "AB")
		certificate.valid?
		expect(certificate.errors[:name]).to include("is too short (minimum is 3 characters)")
	end 

	it "is invalid with name more than 50" do 
		name = "A" * 51
		certificate = build(:certificate, name: name)
		certificate.valid?
		expect(certificate.errors[:name]).to include("is too long (maximum is 50 characters)")
	end 

	it "is invalid without url" do 
		certificate = build(:certificate, url: nil)
		certificate.valid?
		expect(certificate.errors[:url]).to include("can't be blank")
	end 

	it "is invalid without licenceid" do 
		certificate = build(:certificate, licenceid: nil)
		certificate.valid?
		expect(certificate.errors[:licenceid]).to include("can't be blank")
	end 


end 
