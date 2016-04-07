class LanguageController < ApplicationController

	def english
		# @english_language = true 
		redirect_to root_path
	end

	def spanish
		# @english_language = false 
		redirect_to root_path
	end 

end
