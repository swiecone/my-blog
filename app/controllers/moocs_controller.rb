class MoocsController < ApplicationController
  before_action :require_user, only: [:new, :create]

	def index
		@moocs = Mooc.all
	end 

	def new
		@mooc = Mooc.new
		@platforms = Platform.all
		@institutions = Institution.all
	end 

	def show 
		@mooc = Mooc.find(1)
	end

end 
