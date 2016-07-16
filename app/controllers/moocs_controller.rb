class MoocsController < ApplicationController
  before_action :require_user, only: [:new, :create]

	def index
		@allmoocs = Mooc.all
    @moocs = []
    @allmoocs.each do |mooc|
      if mooc.finish_date =! nil 
          @moocs.push(mooc)
              debugger

      end 
    end  

lorem

		@platforms = Platform.all
		@institutions = Institution.all
    @certificates = Certificate.all 

    if (params[:sort] == "title" )
            @moocs = Mooc.all.order("title ASC")

       elsif (params[:sort] == "date" )
          @moocs = Mooc.all.order("finish_date DESC")

        elsif (params[:sort] == "rating" )
            @moocs = Mooc.all.order("rating DESC")
        end 

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
    #we pick up the moooc that has been selected, and pass the institution associated to the mooc
		@mooc = Mooc.find(params[:id])
    @institution = Institution.find(@mooc.institution_id).name
	end

private
  def moocs_params
    params.require(:mooc).permit( :title, :platform, :institution, :shortsummary, :status, :rating, :url, :thumburl, :certification)
  end

end 
