require 'rails_helper'

describe Book do 
   it "is valid with title, platform, short summary, status and urltomooc" do 
      mooc = Mooc.new(title: "Design of Social Surveys", 
                     platform: "Coursera.org",
                     university: "Michigan University",
                     shortsummary: "The fucking course is awesome!!",
                     status: "In progress",
                     rating: "10",
                     urltomooc: "https://www.coursera.org/learn/questionnaire-design")
            expect(mooc).to be_valid
   end 

   it "is valid with title longer than 10 characters and less than 200" do 
         @title = "A" * 111
         mooc = Mooc.new(title: @title, 
                     platform: "Coursera.org",
                     university: "Michigan University",
                     shortsummary: "The fucking course is awesome!!",
                     status: "In progress",
                     rating: "10",
                     urltomooc: "https://www.coursera.org/learn/questionnaire-design")
         expect(mooc).to be_valid
   end 

   it "is not valid with title less than 10 characters" do 
         @title = "A" * 9
         mooc = Mooc.new(title: @title, 
                     platform: "Coursera.org",
                     university: "Michigan University",
                     shortsummary: "The fucking course is awesome!!",
                     status: "In progress",
                     rating: "10",
                     urltomooc: "https://www.coursera.org/learn/questionnaire-design")
         expect(mooc).not_to be_valid
   end 

  it "is not valid with title more than 200 characters" do 
         @title = "A" * 201
         mooc = Mooc.new(title: @title, 
                     platform: "Coursera.org",
                     university: "Michigan University",
                     shortsummary: "The fucking course is awesome!!",
                     status: "In progress",
                     rating: "10",
                     urltomooc: "https://www.coursera.org/learn/questionnaire-design")
         expect(mooc).not_to be_valid
   end 

   it "is not valid with a shortsummary that is less than 30 characters" do 
        @shortsummary = "A" * 29
         mooc = Mooc.new(title: "Coursera.org",
                     platform: "Michigan University",
                     university: "Michigan University",
                     shortsummary: @shortsummary, 
                     status: "In progress",
                     rating: "10",
                     urltomooc: "https://www.coursera.org/learn/questionnaire-design")
         expect(mooc).not_to be_valid
   end 

     it "is not valid with a shortsummary that is more than 400 characters" do 
        @shortsummary = "A" * 401
         mooc = Mooc.new(title: "Coursera.org",
                     platform: "Michigan University",
                     university: "Michigan University",
                     shortsummary: @shortsummary, 
                     status: "In progress",
                     rating: "10",
                     urltomooc: "https://www.coursera.org/learn/questionnaire-design")
         expect(mooc).not_to be_valid
   end 

   it "is not valid with  urltomooc shorter than 20 characters" do 
       @urltomooc = "A" * 19
         mooc = Mooc.new(title: "Coursera.org",
                     platform: "Michigan University",
                     university: "Michigan University",
                     shortsummary:  "The fucking course is awesome!!",
                     status: "In progress",
                     rating: "10",
                     urltomooc: @urltomooc )
         expect(mooc).not_to be_valid
   end 


end

#This is the schema for MOOCs 
   # t.string   "title"
   #  t.string   "platform"
   #  t.string   "university"
   #  t.string   "shortsummary"
   #  t.text     "longsummary"
   #  t.string   "status"
   #  t.datetime "created_at",   null: false
   #  t.datetime "updated_at",   null: false
   #  t.integer  "rating"
   #  t.string   "urltomooc"