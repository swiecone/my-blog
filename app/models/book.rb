class Book < ActiveRecord::Base
	validates :isbn, presence: true 
	validates :title, presence: true 
	validates :shortsummary, presence: true 
	validates :thumburl, presence: true  
end

