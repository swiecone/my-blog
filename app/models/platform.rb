class Platform < ActiveRecord::Base
	belongs_to :mooc
	validates :name, presence: true ,  length: { minimum: 3, maximum: 50 }
	validates :url, presence: true ,  length: { minimum: 10 }
	validates :mooc_id, presence: true 
end

