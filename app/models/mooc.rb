class Mooc < ActiveRecord::Base
   has_many :categories
   has_one :certificate
   belongs_to :platform
   belongs_to :institution
   validates :title, presence: true ,  length: { minimum: 5, maximum: 100 }
   validates :shortsummary, presence: true ,  length: { minimum: 30, maximum: 400 }
   validates :platform_id, presence: true 
   validates :institution_id, presence: true  
end
