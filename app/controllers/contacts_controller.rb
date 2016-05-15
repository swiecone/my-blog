class ContactsController < ApplicationController
	  before_action :require_user, only: [:index]


	 def index
        @contacts = Contact.all.reverse
  end

end 
