class MoocsController < ApplicationController
  before_action :require_user, only: [:new, :create]

	def index
		@moocs = Mooc.all
	end 

	def new
		@mooc = Mooc.new
	end 

	def show 
		@mooc = Mooc.find(1)
	end

end 
