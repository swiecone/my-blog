require 'rails_helper'

describe Mooc do 
   it "is valid with title, platform, short summary, status, platform_id, url, institution_id, urltomooc and has_certification" do
            expect(build(:mooc)).to be_valid
   end 

  it "is invalid without a title" do 
      mooc = build(:mooc, title: nil)
      mooc.valid?
      expect(mooc.errors[:title]).to include("can't be blank") 
   end 

 
  it "is invalid without a url" do 
      mooc = build(:mooc, url: nil)
      mooc.valid?
      expect(mooc.errors[:url]).to include( "can't be blank" , "is too short (minimum is 11 characters)") 
   end 



  it "is invalid with a url shorter than 11"  do
      mooc = build(:mooc, url: "url")
      mooc.valid?
      expect(mooc.errors[:url]).to include( "is too short (minimum is 11 characters)") 
   end 

  it "is invalid without a thumburl" do 
      mooc = build(:mooc, thumburl: nil)
      mooc.valid?
      expect(mooc.errors[:thumburl]).to include( "can't be blank") 
  end 

  it "is invalid without a platform_id" do 
      mooc = build(:mooc, platform_id: nil)
      mooc.valid?
      expect(mooc.errors[:platform_id]).to include("can't be blank") 
  end 

  it "is imvalid without institution_id" do 
      mooc = build(:mooc, institution_id: nil)
      mooc.valid? 
      expect(mooc.errors[:institution_id]).to include("can't be blank") 
  end 

end
