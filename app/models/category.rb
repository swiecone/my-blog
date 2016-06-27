class Category < ActiveRecord::Base
	belongs_to :book
	belongs_to :mooc
	validates :name, presence: true ,  length: { minimum: 3 }
end
