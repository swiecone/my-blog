class MoocsController < ApplicationController
  before_action :require_user, only: [:new, :create]

	def index
		@moocs = Mooc.all
		@platforms = Platform.all
		@institutions = Institution.all

	end 

	def new
		@mooc = Mooc.new
		@platforms = Platform.all
		@institutions = Institution.all
	end 

	def create 
    @mooc = Mooc.new(moocs_params)
    @mooc.institution_id = params[:institution_id]
    @mooc.platform_id = params[:platform_id]
    @mooc.rating = params[:rating]
    @mooc.url = params[:url]
    @mooc.thumburl = params[:thumburl]
    debugger

    if @mooc.save
      flash[:success] = "Your MOOC was created successfully!"
      redirect_to moocs_path
    else
      render :new
    end
  end 


	def show 
		@mooc = Mooc.find(1)
	end

private
  def moocs_params
    params.require(:mooc).permit( :title, :platform, :institution, :shortsummary, :status, :rating, :url, :thumburl, :certification)
  end

end 
