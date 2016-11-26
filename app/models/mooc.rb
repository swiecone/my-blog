class Mooc < ActiveRecord::Base
   has_many :categories
   has_one :certificate
   belongs_to :platform
   belongs_to :institution
   validates :title, presence: true 
   validates :shortsummary, presence: true 
   validates :platform_id, presence: true 
   validates :url, presence: true, length: { minimum: 11 }
   validates :institution_id, presence: true  
   validates :thumburl, presence: true

end
