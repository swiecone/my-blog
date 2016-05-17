class MoocsController < ApplicationController

	def index
	end 

	def new
		@mooc = Mooc.new
	end 

end 
