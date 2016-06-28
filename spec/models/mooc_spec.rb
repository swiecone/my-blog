require 'rails_helper'

# create_table "moocs", force: :cascade do |t|
#     t.string   "title"
#     t.string   "shortsummary"
#     t.text     "longsummary"
#     t.string   "status"
#     t.datetime "created_at",        null: false
#     t.datetime "updated_at",        null: false
#     t.integer  "rating"
#     t.integer  "platform_id"
#     t.string   "url"
#     t.integer  "institution_id"
#     t.string   "thumburl"
#     t.boolean  "has_certification"
#     t.integer  "certificate_id"
#   end

 # has_many :categories
 #   has_one :certificate
 #   belongs_to :platform
 #   belongs_to :institution
 #   validates :title, presence: true ,  length: { minimum: 10, maximum: 200 }
 #   validates :shortsummary, presence: true ,  length: { minimum: 30, maximum: 400 }
 #   validates :platform_id, presence: true 
 #   validates :institution_id, presence: true  

describe Mooc do 
   it "is valid with title, platform, short summary, status, platform_id, url, institution_id, urltomooc and has_certification" do 
      mooc = Mooc.new(title: "Design of Social Surveys", 
                     shortsummary: "The fucking course is awesome!!",
                     status: "In progress",
                     platform_id: 1, 
                     url: "http://www.moocs.com",
                     institution_id: 1,
                     thumburl: "http://www.mepareceunaaberracion.com", 
                     has_certification: true)
            expect(mooc).to be_valid
   end 

  it "is invalid without a title" do 
      mooc = Mooc.create(title: nil, 
                     shortsummary: "The fucking course is awesome!!",
                     status: "In progress",
                     platform_id: 1, 
                     url: "http://www.moocs.com",
                     institution_id: 1,
                     thumburl: "http://www.mepareceunaaberracion.com", 
                     has_certification: true)
           expect(mooc.errors[:title]).to include("can't be blank", "is too short (minimum is 5 characters)") 
    end 

  it "is invalid with a title shorter than 5"
  it "is invalid with a title longer than 100"
  it "is invalid without a short summary"
  it "is invalid with a short summary less than 30"
  it "is invalid with a short summary more than 400"


  it "is invalid without a url"
  it "is invalid with a url shorter than 11"

  it "is invalid without a thumburl"
  it "is invalid with a thumburl shorter than 11"

  it "is invalid without a platform_id"
  it "is imvalid without institution_id"
  it "is valued"

end
