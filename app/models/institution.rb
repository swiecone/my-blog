class Institution < ActiveRecord::Base
	has_many :moocs
	validates :name, presence: true ,  length: { minimum: 3, maximum: 50 }
	validates :url, presence: true ,  length: { minimum: 11 }
	validates :thumburl, presence: true ,  length: { minimum: 11 }
end
