require 'rails_helper'

describe Book do 
	it "is valid with isbn, title, shortsummary, status and thumburl" do 
		expect(build(:book)).to be_valid
	end 

	it "is not valid without isbn" do
		book = build(:book, isbn: nil)
		book.valid?
		expect(book.errors[:isbn]).to include("can't be blank", "is too short (minimum is 10 characters)")
	end 

	it "has an isbn shorter than 10 characters" do 
			book = build(:book, isbn: "123")
			book.valid?
			expect(book.errors[:isbn]).to include("is too short (minimum is 10 characters)")
	end 

	it "has an isbn longer than 13 characters" do 
			@isbn = "0" * 14
			book = build(:book, isbn: @isbn)
			book.valid?
			expect(book.errors[:isbn]).to include("is too long (maximum is 13 characters)")
	end 

	it "is invalid if the isbn inserted already exists" do 
			book = build(:book)
			book.save
			book2 = build(:book)
			book2.save
			expect(book2.errors[:isbn]).to include("has already been taken")
	end 

	it "is not valid without title" do 
			book = build(:book, title: nil)
			book.valid?
			expect(book.errors[:title]).to include("can't be blank")
	end 

	it "is not valid without shortsummary" do 
			book = build(:book, shortsummary: nil)
			book.valid?
			expect(book.errors[:shortsummary]).to include("can't be blank")
	end 



	it "is not valid without thumburl" do 
			book = build(:book, thumburl: nil)
			book.valid?
			expect(book.errors[:thumburl]).to include("can't be blank")
	end 
end