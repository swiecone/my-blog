class Book < ActiveRecord::Base
	has_many :categories
	validates :isbn, presence: true, length: { minimum: 10, maximum: 13 }, uniqueness: true
	validates :title, presence: true 	
	validates :shortsummary, presence: true
	validates :status, presence: true
	validates :thumburl, presence: true ,  length: { minimum: 11 }
end
