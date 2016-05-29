require 'rails_helper'

describe Platform do
  it "is valid with name, url and mooc_id" do 
  	platform = Platform.new(name: "Coursera",
  							url: "https://www.coursera.org/",
  							mooc_id: 1)
    expect(platform).to be_valid
  end 

end

	# belongs_to :mooc
	# validates :name, presence: true ,  
	# length: { minimum: 3, maximum: 50 }
	# validates :url, presence: true ,  
	# length: { minimum: 10 }
	# validates :mooc_id, presence: true 