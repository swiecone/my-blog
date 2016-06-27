require 'rails_helper'

describe Category do 
	it "is valid if category name is longer than 5" do 
		cat = Category.new(name: "Mindfulness")
	    expect(cat).to be_valid
	end 

	it "is not valid if category there is no category name" do 
		cat = Category.new(name: nil)
	    expect(cat).not_to be_valid
	end 

	it "is valid if category name is short than 3" do 
		cat = Category.new(name: "AA")
	    expect(cat).not_to be_valid
	end 
end 
