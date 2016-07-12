require 'rails_helper'

describe Mooc do 
   it "is valid with title, platform, short summary, status, platform_id, url, institution_id, urltomooc and has_certification" do
            expect(build(:mooc)).to be_valid
   end 

  it "is invalid without a title" do 
      mooc = build(:mooc, title: nil)
      mooc.valid?
      expect(mooc.errors[:title]).to include("can't be blank", "is too short (minimum is 5 characters)") 
   end 

  it "is invalid with a title shorter than 5" do 
     mooc = build(:mooc, title: "ABC")
     mooc.valid?
    expect(mooc.errors[:title]).to include("is too short (minimum is 5 characters)") 
  end 

  it "is invalid with a title longer than 100" do 
      title = "A" * 101
      mooc = build(:mooc, title: title)
      mooc.valid?
      expect(mooc.errors[:title]).to include("is too long (maximum is 100 characters)") 
    end 

  it "is invalid without a short summary" do 
      mooc = Mooc.create(title: "Design of Social Surveys", 
                     shortsummary: nil,
                     status: "In progress",
                     platform_id: 1, 
                     url: "http://www.moocs.com",
                     institution_id: 1,
                     thumburl: "http://www.mepareceunaaberracion.com", 
                     has_certification: true)
           expect(mooc.errors[:shortsummary]).to include("can't be blank", "is too short (minimum is 30 characters)") 
   end 

  it "is invalid with a short summary less than 30" do 
      mooc = Mooc.create(title: "Design of Social Surveys", 
                     shortsummary: "short summary :(",
                     status: "In progress",
                     platform_id: 1, 
                     url: "http://www.moocs.com",
                     institution_id: 1,
                     thumburl: "http://www.mepareceunaaberracion.com", 
                     has_certification: true)
           expect(mooc.errors[:shortsummary]).to include("is too short (minimum is 30 characters)") 
   end 

  it "is invalid with a short summary more than 400" do 
    longsummary = "A" * 401
      mooc = Mooc.create(title: "Design of Social Surveys", 
                     shortsummary: longsummary,
                     status: "In progress",
                     platform_id: 1, 
                     url: "http://www.moocs.com",
                     institution_id: 1,
                     thumburl: "http://www.mepareceunaaberracion.com", 
                     has_certification: true)
           expect(mooc.errors[:shortsummary]).to include("is too long (maximum is 400 characters)") 
   end 

  it "is invalid without a url" do 
      mooc = Mooc.create(title: "Design of Social Surveys", 
                     shortsummary: "short summary is a short summary and it should be enough for the test",
                     status: "In progress",
                     platform_id: 1, 
                     url: nil,
                     institution_id: 1,
                     thumburl: "http://www.mepareceunaaberracion.com", 
                     has_certification: true)
           expect(mooc.errors[:url]).to include( "can't be blank" , "is too short (minimum is 11 characters)") 
   end 



  it "is invalid with a url shorter than 11"  do
        mooc = Mooc.create(title: "Design of Social Surveys", 
                     shortsummary: "short summary is a short summary and it should be enough for the test",
                     status: "In progress",
                     platform_id: 1, 
                     url: "http://www",
                     institution_id: 1,
                     thumburl: "http://www.mepareceunaaberracion.com", 
                     has_certification: true)
           expect(mooc.errors[:url]).to include( "is too short (minimum is 11 characters)") 
   end 

  it "is invalid without a thumburl" do 
     mooc = Mooc.create(title: "Design of Social Surveys", 
                     shortsummary: "short summary is a short summary and it should be enough for the test",
                     status: "In progress",
                     platform_id: 1, 
                     url: "http://www.coursera.org",
                     institution_id: 1,
                     thumburl: nil, 
                     has_certification: true)
           expect(mooc.errors[:thumburl]).to include( "can't be blank" , "is too short (minimum is 11 characters)") 
  end 

  it "is invalid with a thumburl shorter than 11" do 
     mooc = Mooc.create(title: "Design of Social Surveys", 
                     shortsummary: "short summary is a short summary and it should be enough for the test",
                     status: "In progress",
                     platform_id: 1, 
                     url: "http://www.coursera.org",
                     institution_id: 1,
                     thumburl: "http://www", 
                     has_certification: true)
           expect(mooc.errors[:thumburl]).to include( "is too short (minimum is 11 characters)") 
  end 

  it "is invalid without a platform_id" do 
     mooc = Mooc.create(title: "Design of Social Surveys", 
                     shortsummary: "short summary is a short summary and it should be enough for the test",
                     status: "In progress",
                     platform_id: nil, 
                     url: "http://www.coursera.org",
                     institution_id: 1,
                     thumburl: "http://www.thumb.com", 
                     has_certification: true)
           expect(mooc.errors[:platform_id]).to include("can't be blank") 
  end 

  it "is imvalid without institution_id" do 
     mooc = Mooc.create(title: "Design of Social Surveys", 
                     shortsummary: "short summary is a short summary and it should be enough for the test",
                     status: "In progress",
                     platform_id: 1, 
                     url: "http://www.coursera.org",
                     institution_id: nil,
                     thumburl: "http://www.thumb.com", 
                     has_certification: true)
           expect(mooc.errors[:institution_id]).to include("can't be blank") 
  end 

end
