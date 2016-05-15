class LoginsController < ApplicationController

	def new

	end 

	def create
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			flash[:success] = "Welcome to Alex's Blog!"
			redirect_to root_path

		else
			flash.now[:danger] = "Your email address or password does not match"
			render 'new'
		end
	end 

	def destroy

			session[:user_id] = nil
		 	flash[:success] = "You have logged out correctly."
			redirect_to root_path
		# else 
		# 	flash[:danger] = "You must log in before you log out :)"
		# 	redirect_to root_path
		#end
			
	end 

end