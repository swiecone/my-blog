require 'rails_helper'


describe User do 
	it "is a valid user" do 
		 user = User.create(name: "Alex2", email: "alex2@alexswiec.com", password: "password", admin: true)
		 expect(user).to be_valid
	end 

	it "is invalid  withouth a name" do 
		 user = User.create(name: nil, email: "alex3@alexswiec.com", password: "password", admin: true)
           expect(user.errors[:name]).to include("can't be blank", "is too short (minimum is 3 characters)") 
	end 

	it "is invalid with a name smaller than 3"  do 
		 user = User.create(name: "AA", email: "alex3@alexswiec.com", password: "password", admin: true)
           expect(user.errors[:name]).to include("is too short (minimum is 3 characters)") 
	end 
	it "is invalid with a name bigger than 50"  do 
		long_name = "A" * 41
		 user = User.create(name: long_name, email: "alex3@alexswiec.com", password: "password", admin: true)
           expect(user.errors[:name]).to include("is too long (maximum is 40 characters)") 
	end 
	it "is invalid without an email" do 
	    user = User.create(name: "Alex", email: nil, password: "password", admin: true)
           expect(user.errors[:email]).to include("can't be blank", "is too short (minimum is 7 characters)") 
	end 

	it "is invalid with an email longer than 105 characters" do 
		long_email = "A" * 101 + "@example.com"
	    user = User.create(name: "Alex", email: "", password: "password", admin: true)
           expect(user.errors[:email]).to include("can't be blank", "is too short (minimum is 7 characters)") 
	end 

	it "is invalid without a valid email"  do 
		long_email = "alex@example"
	    user = User.create(name: "Alex", email: "", password: "password", admin: true)
           expect(user.errors[:email]).to include("can't be blank", "is too short (minimum is 7 characters)") 
	end 

	it "is invalid without  a password"
	it "is invalid without admin"
end 
