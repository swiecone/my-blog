require 'rails_helper'

 

describe Platform do
  it "is valid with name and url" do 
    expect(build(:platform)).to be_valid
  end 

   it "is invalid without name" do 
	   platform = build(:platform, name:nil)
     platform.valid?
     expect(platform.errors[:name]).to include( "can't be blank" , "is too short (minimum is 3 characters)") 
   end 

   it "is invalid with a name of less than 3 characters" do 
	   platform = build(:platform, name: "AB")
     platform.valid?
     expect(platform.errors[:name]).to include("is too short (minimum is 3 characters)") 
   end 

    it "is invalid with a name of more than 50 characters" do 
	    long_name = "A" * 51
	    platform =  build(:platform, name: long_name)
      platform.valid?
      expect(platform.errors[:name]).to include("is too long (maximum is 50 characters)") 
   end 

   it "is invalid without url" do 
	    platform = build(:platform, url: nil)
      platform.valid?
      expect(platform.errors[:url]).to include( "can't be blank" , "is too short (minimum is 11 characters)") 
   end 

    it "is invalid too short url" do 
	    platform = build(:platform, url: "url")
      platform.valid?
      expect(platform.errors[:url]).to include("is too short (minimum is 11 characters)") 
   end 

end



