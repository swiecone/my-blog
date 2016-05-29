class Mooc < ActiveRecord::Base
   has_many :categories
	belongs_to :platform
   validates :title, presence: true ,  length: { minimum: 10, maximum: 200 }
	validates :shortsummary, presence: true ,  length: { minimum: 30, maximum: 400 }
	validates :urltomooc, presence: true, length: { minimum: 20 } 
   # validates :platform, presence: true ,  length: { minimum: 3, maximum: 100 }
   # validates :university, presence: true ,  length: { minimum: 3, maximum: 100 }
      # should be another table!! 
   # validates :status, presence: true, length: { minimum: 6, maximum: 15 }
      # should be another table!! 
end



#This is the schema for MOOCs 
   # t.string   "title"
   #  t.string   "platform"
   #  t.string   "university"
   #  t.string   "shortsummary"
   #  t.text     "longsummary"
   #  t.string   "status"
   #  t.datetime "created_at",   null: false
   #  t.datetime "updated_at",   null: false
   #  t.integer  "rating"
   #  t.string   "urltomooc"