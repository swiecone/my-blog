class Certificate < ActiveRecord::Base
	belongs_to :mooc
	validates :name, presence: true, length: { minimum: 3, maximum: 50 }
	validates :url, presence: true
	validates :licenceid, presence: true 
end
