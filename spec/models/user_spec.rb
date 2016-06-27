require 'rails_helper'


describe User do 
	it "is a valid user" 
	it "is invalid  withouth a name"
	it "is invalid with a name smaller than 3"
	it "is invalid with a name bigger than 50"
	it "is invalid without an email"
	it "is invalid with an email longer than 105 characters"
	it "is invalid without a valid email"
	it "is invalid without  a password"
	it "is invalid without admin"
end 
