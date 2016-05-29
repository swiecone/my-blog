require 'rails_helper'

describe Category do 
	it "is valid if category name is longer than 5" do 
		cat = Category.new(name: "Category")
	    expect(cat).to be_valid
	end 

	it "is not valid if category there is no category name" do 
		cat = Category.new(name: nil)
	    expect(cat).not_to be_valid
	end 

	it "is valid if category name is short than 5" do 
		cat = Category.new(name: "AAA")
	    expect(cat).to be_valid
	end 
end 
