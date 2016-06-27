require 'rails_helper'

describe Certificate do 
	it "is valid with name, url and licenceid" do 
		certificate = Certificate.new(name: "pmp certificate", 
						url: "http://www.certificate.com",
						licenceid: "421332423424")
		expect(certificate).to be_valid
	end 

	it "is invalid without name" do 
		certificate = Certificate.new(name: nil, 
						url: "http://www.certificate.com",
						licenceid: "421332423424")
		expect(certificate).not_to be_valid
	end 

	it "is invalid with name less than 3" do 
		certificate = Certificate.new(name: "pm", 
						url: "http://www.certificate.com",
						licenceid: "421332423424")
		expect(certificate).not_to be_valid
	end 

	it "is invalid with name more than 25" do 
		name = "A" * 26
		certificate = Certificate.new(name: name, 
						url: "http://www.certificate.com",
						licenceid: "421332423424")
		expect(certificate).not_to be_valid
	end 

	it "is invalid without url" do 
		certificate = Certificate.new(name: "name", 
				url: nil,	
				licenceid: "421332423424")
		expect(certificate).not_to be_valid
	end 

	it "is invalid without licenceid" do 
		certificate = Certificate.new(name: "pmp certificate", 
						url: "http://www.certificate.com",
						licenceid: nil)
		expect(certificate).not_to be_valid
	end 


end 
