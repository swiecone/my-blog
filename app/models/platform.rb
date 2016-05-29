class Platform < ActiveRecord::Base
	has_many :mooc
	validates :name, presence: true ,  length: { minimum: 3, maximum: 50 }
	validates :url, presence: true ,  length: { minimum: 10 }
end

