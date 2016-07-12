require 'rails_helper'

  # create_table "contacts", force: :cascade do |t|
  #   t.string   "name"
  #   t.string   "phone"
  #   t.text     "message"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  #   t.string   "email"
  # end

describe Contact do 
	it "is valid with name, phone, message and email" do 
		expect(build(:contact)).to be_valid
	end 

	it "is not valid without a name" do 
		contact = build(:contact, name: nil)
		contact.valid?
		expect(contact.errors[:name]).to include("can't be blank")
	end 

	it "is not valid without a phone" do 
		contact = build(:contact, phone: nil)
		contact.valid?
		expect(contact.errors[:phone]).to include("can't be blank")
	end 

	it "is not valid without a message" do 
		contact = build(:contact, message: nil)
		contact.valid?
		expect(contact.errors[:message]).to include("can't be blank")
	end 

	it "is not valid without an email" do 
		contact = build(:contact, email: nil)
		contact.valid?
		expect(contact.errors[:email]).to include("can't be blank")
	end 

end 
