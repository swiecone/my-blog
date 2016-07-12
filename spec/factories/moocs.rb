FactoryGirl.define do 
	factory :mooc do 
         title "Design Thinking MOOC"
         shortsummary "short summary is a short summary and it should be enough for the test"
	     status "In progress"
	     platform_id 1
	     url "http://www.coursera.org"
	     institution_id 1
	     thumburl "http://www.thumb.com"
	     has_certification true
	end 
end