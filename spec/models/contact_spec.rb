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
		contact = Contact.new(name: "Alex", 
							  phone: "1234562334", 
							  message: "this is a message for you", 
							  email: "alex@alex.com")
		expect(contact).to be_valid
	end 

	it "is not valid without a name" do 
		contact = Contact.new(name: nil, 
							  phone: "1234562334", 
							  message: "this is a message for you", 
							  email: "alex@alex.com")
		expect(contact).not_to be_valid
	end 

	it "is not valid without a phone" do 
		contact = Contact.new(name: "Alex", 
							  phone: nil, 
							  message: "this is a message for you", 
							  email: "alex@alex.com")
		expect(contact).not_to be_valid
	end 

	it "is not valid without a message" do 
		contact = Contact.new(name: "Alex", 
							  phone: nil, 
							  message: nil, 
							  email: "alex@alex.com")
		expect(contact).not_to be_valid
	end 

	it "is not valid without an email" do 
		contact = Contact.new(name: "Alex", 
							  phone: nil, 
							  message: "this is a message for you", 
							  email: nil)
		expect(contact).not_to be_valid
	end 

end 
