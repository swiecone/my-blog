FactoryGirl.define do 
	factory :user do 
		name "Alex"
		sequence(:email) { |n| "alex#{n}@alexswiec.com"}
		password "password"
		admin true 
	end 
end