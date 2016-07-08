FactoryGirl.define do
  factory :book do
    isbn "1234567890"
	title "This is a test book"
	shortsummary "This is a really short summary of the book for testing"
	status "Reading"
	thumburl "sample-thumb.jpg"
  end
end