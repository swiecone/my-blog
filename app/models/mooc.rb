class Mooc < ActiveRecord::Base
   has_many :categories
   belongs_to :platform
   belongs_to :institution
   validates :title, presence: true ,  length: { minimum: 10, maximum: 200 }
   validates :shortsummary, presence: true ,  length: { minimum: 30, maximum: 400 }
   validates :platform_id, presence: true 
   validates :institution_id, presence: true  
   validates :certification, presence: true, length { minimum: 2, maximum: 400 }
end
