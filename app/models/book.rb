class Book < ActiveRecord::Base
	validates :isbn, presence: true ,  length: { in: 10..13 }
	validates :title, presence: true , length: { minimum: 5, maximum: 100 }
	validates :shortsummary, presence: true, length: { minimum: 30, maximum: 400 }
	validates :thumburl, presence: true ,  length: { minimum: 10 }
end

