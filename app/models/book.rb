class Book < ActiveRecord::Base
	has_many :categories
	validates :isbn, presence: true, length: { minimum: 10, maximum: 13 }, uniqueness: true
	validates :title, presence: true , length: { minimum: 5, maximum: 100 }
	validates :shortsummary, presence: true, length: { minimum: 30, maximum: 400 }
	validates :status, presence: true
	validates :thumburl, presence: true ,  length: { minimum: 11 }
end
