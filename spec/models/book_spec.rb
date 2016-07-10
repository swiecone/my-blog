require 'rails_helper'


# create_table "books", force: :cascade do |t|
#     t.string   "isbn"
#     t.string   "title"
#     t.string   "shortsummary"
#     t.text     "longsummary"
#     t.integer  "rating"
#     t.date     "read"
#     t.string   "status"
#     t.string   "thumburl"
#   end

# has_many :categories
# 	validates :isbn, presence: true
# 	validates :title, presence: true , length: { minimum: 5, maximum: 100 }
# 	validates :shortsummary, presence: true, length: { minimum: 30, maximum: 400 }
# 	validates :status, presence: true
# 	validates :thumburl, presence: true ,  length: { minimum: 10 }



describe Book do 
	it "is valid with isbn, title, shortsummary, status and thumburl" do 
		expect(FactoryGirl.build(:book)).to be_valid
	end 

	it "is not valid without isbn" do
		book = FactoryGirl.build(:book, isbn: nil)
		book.valid?
		expect(book.errors[:isbn]).to include("can't be blank", "is too short (minimum is 10 characters)")
	end 

	it "has an isbn shorter than 10 characters" do 
			book = FactoryGirl.build(:book, isbn: "123")
			book.valid?
			expect(book.errors[:isbn]).to include("is too short (minimum is 10 characters)")
	end 

	it "has an isbn longer than 13 characters" do 
			@isbn = "0" * 14
			book = FactoryGirl.build(:book, isbn: @isbn)
			book.valid?
			expect(book.errors[:isbn]).to include("is too long (maximum is 13 characters)")
	end 

	it "is invalid if the isbn inserted already exists" do 
			book = FactoryGirl.build(:book)
			book.save
			book2 = FactoryGirl.build(:book)
			book2.save
			expect(book2.errors[:isbn]).to include("has already been taken")
	end 

	it "is not valid without title" do 
		book = Book.new(isbn:  "0123456789", 
						title: nil, 
						shortsummary: "Short Summary of the book and it should be longer",
						status: "Reading",
						thumburl: "http://Thumburl.html")
			expect(book).not_to be_valid
	end 

	it "is not valid without shortsummary" do 
		book = Book.new(isbn: "0123456789", 
						title: "Book Title",
						shortsummary: nil,
						status: "Reading",
						thumburl: "http://Thumburl.html")
		expect(book).not_to be_valid
	end 

	it "has a shortsummary of less than 30 characters" do 
		book = Book.new(isbn: "0123456789", 
						title: "Book Title",
						shortsummary: "A",
						status: "Reading",
						thumburl: "http://Thumburl.html")
		expect(book).not_to be_valid
	end 

	it "has a shortsummary of more than 400 characters" do 
		@shortsummary = "A" * 401
		book = Book.new(isbn: "0123456789", 
						title: "Book Title",
						shortsummary: @shortsummary,
						status: "Reading",
						thumburl: "http://Thumburl.html")
		expect(book).not_to be_valid
	end 

	it "is not valid without thumburl" do 
		book = Book.new(isbn: "0123456789", 
						title: "Book Title",
						shortsummary: "Short Summary of the book and it should be longer",
						status: "Reading",
						thumburl: nil)
		expect(book).not_to be_valid
	end 
end