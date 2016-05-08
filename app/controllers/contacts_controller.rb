class ContactsController < ApplicationController
	 def index
        @contacts = Contact.all.reverse
  end

end 
