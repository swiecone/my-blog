require 'rails_helper'

describe Book do 
	it "is valid with isbn, title, shortsummary and thumburl" do 
		book = Book.new(isbn: "0123456789", 
						title: "Book Title",
						shortsummary: "Short Summary of the book and it should be longer",
						thumburl: "http://Thumburl.html")
		expect(book).to be_valid
	end 

	it "is not valid without isbn" do 
			book = Book.new(isbn: nil, 
						title: "Book Title",
						shortsummary: "Short Summary of the book and it should be longer",
						thumburl: "http://Thumburl.html")
			expect(book).not_to be_valid
	end 

	it "has an isbn shorter than 10 characters" do 
			book = Book.new(isbn: "0123", 
						title: "Book Title",
						shortsummary: "Short Summary of the book and it should be longer",
						thumburl: "http://Thumburl.html")
			expect(book).not_to be_valid
	end 

	it "has an isbn longer than 13 characters" do 
			@isbn = "0" * 14
			book = Book.new(isbn: @isbn, 
						title: "Book Title",
						shortsummary: "Short Summary of the book and it should be longer",
						thumburl: "http://Thumburl.html")
			expect(book).not_to be_valid
	end 

	it "is not valid without title" do 
		book = Book.new(isbn:  "0123456789", 
						title: nil, 
						shortsummary: "Short Summary of the book and it should be longer",
						thumburl: "http://Thumburl.html")
			expect(book).not_to be_valid
	end 

	it "is not valid without shortsummary" do 
		book = Book.new(isbn: "0123456789", 
						title: "Book Title",
						shortsummary: nil,
						thumburl: "http://Thumburl.html")
		expect(book).not_to be_valid
	end 

	it "has a shortsummary of less than 30 characters" do 
		book = Book.new(isbn: "0123456789", 
						title: "Book Title",
						shortsummary: "A",
						thumburl: "http://Thumburl.html")
		expect(book).not_to be_valid
	end 

	it "has a shortsummary of more than 400 characters" do 
		@shortsummary = "A" * 401
		book = Book.new(isbn: "0123456789", 
						title: "Book Title",
						shortsummary: @shortsummary,
						thumburl: "http://Thumburl.html")
		expect(book).not_to be_valid
	end 

	it "is not valid without thumburl" do 
		book = Book.new(isbn: "0123456789", 
						title: "Book Title",
						shortsummary: "Short Summary of the book and it should be longer",
						thumburl: nil)
		expect(book).not_to be_valid
	end 
end