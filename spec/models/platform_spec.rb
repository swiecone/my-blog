require 'rails_helper'

 

describe Platform do
  it "is valid with name and url" do 
  	platform = Platform.create(name: "Coursera",
  							url: "https://www.coursera.org/")
    expect(platform).to be_valid
  end 

   it "is invalid without name" do 
	platform = Platform.create(name: nil,
  							url: "https://www.coursera.org/")
    expect(platform.errors[:name]).to include( "can't be blank" , "is too short (minimum is 3 characters)") 
   end 

   it "is invalid with a name of less than 3 characters" do 
	platform = Platform.create(name: "AA",
  							url: "https://www.coursera.org/")
    expect(platform.errors[:name]).to include("is too short (minimum is 3 characters)") 
   end 

    it "is invalid with a name of more than 50 characters" do 
	long_name = "A" * 51
	platform = Platform.create(name: long_name,
  							url: "https://www.coursera.org/")
    expect(platform.errors[:name]).to include("is too long (maximum is 50 characters)") 
   end 

   it "is invalid without url" do 
	platform = Platform.create(name: "Coursera",
  							url: nil)
    expect(platform.errors[:url]).to include( "can't be blank" , "is too short (minimum is 11 characters)") 
   end 

    it "is invalid too short url" do 
	platform = Platform.create(name: "Coursera",
  							url: "http://www")
    expect(platform.errors[:url]).to include( "is too short (minimum is 11 characters)") 
   end 

end



