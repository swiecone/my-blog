require 'rails_helper'

describe BooksController do 
	describe "Get #Index" 
		
		context 'with params[:sort]'  
		context 'without parameter[:sort]' 

	describe "Get #New" do 
		it "assigns a new Contact to @contact" do 
			get :new 
			expect(assigns(:user)).to be_a_new(User)
		end 

	end 


end 
