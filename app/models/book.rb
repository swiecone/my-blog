class Book < ActiveRecord::Base
	# has_many :categories
	validates :isbn, presence: true ,  length: { in: 10..13 }
	validates :title, presence: true , length: { minimum: 5, maximum: 100 }
	validates :shortsummary, presence: true, length: { minimum: 30, maximum: 400 }
	validates :status, presence: true
	validates :thumburl, presence: true ,  length: { minimum: 10 }
	validates :platform_id, presence: true, numericality: { only_integer: true , greater_than: 0, less_than: 10 }
end

# create_table "books", force: :cascade do |t|
#     t.string   "isbn"
#     t.string   "title"
#     t.string   "shortsummary"
#     t.text     "longsummary"
     # t.integer  "rating"
#     t.date     "read"
#     t.string   "status"
#     t.string   "thumburl"
#     t.integer  "platform_id"
#   end