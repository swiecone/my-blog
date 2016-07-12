require 'rails_helper'


describe User do 
	it "is a valid user" do 
		 expect(build(:user)).to be_valid
	end 

	it "is invalid  withouth a name" do 
		 user = build(:user, name: nil)
		 user.valid?
         expect(user.errors[:name]).to include("can't be blank", "is too short (minimum is 3 characters)") 
	end 

	it "is invalid with a name smaller than 3"  do 
		user = build(:user, name: "AB")
		user.valid?
		expect(user.errors[:name]).to include("is too short (minimum is 3 characters)") 
	end 

	it "is invalid with a name bigger than 50"  do 
		long_name = "A" * 41
 		user = build(:user, name: long_name)
		user.valid?
        expect(user.errors[:name]).to include("is too long (maximum is 40 characters)") 
	end 

	it "is invalid without an email" do 
	    user = build(:user, email: nil)
	    user.valid?
        expect(user.errors[:email]).to include("can't be blank", "is too short (minimum is 7 characters)") 
	end 

	it "is invalid with an email longer than 105 characters" do 
		long_email = "A" * 101 + "@example.com"
	    user = build(:user, email: long_email)
	    user.valid?
        expect(user.errors[:email]).to include("is too long (maximum is 105 characters)") 
	end 

	it "is invalid without a valid email"  do 
		 wrong_email = "alex@example"
	     user = build(:user, email: wrong_email)
	     user.valid?
         expect(user.errors[:email]).to include("is invalid") 
	end 

	it "is invalid with a duplicate email address" do
		 email = "alex@example.com"
	     user = build(:user, email: email)
	     user.save
	     user2 = build(:user, email: email)
	     user2.save	
	     expect(user2.errors[:email]).to include("has already been taken")
   end

	it "is invalid without  a password" do 
         user = build(:user, password: nil)
    	 user.valid?
	     expect(user.errors[:password]).to include("can't be blank") 
	end 

	it "is invalid without admin"  do 
     	 user = build(:user, admin: nil)
    	 user.valid?
	     expect(user.errors[:admin]).to include("can't be blank") 
	end 

	it "is invalid with invalid admin"  do 
     	user = User.new(name: "Alicia", email: "tester@tester.com", password: "password", admin: "Admin")
    	 user.valid?
	     expect(user.errors[:admin]).to include("Admin is not a Boolean") 
	end 
end 
