class BooksController < ApplicationController
#    Needed Static Pages: Home, Blog , Learning  ,About, Contact
  #@english_language = true
  before_action :require_user, only: [:new, :create]
  
  def index
      # Books will be sorted by reading date by default, most recent books at the top. 
      @books = Book.all.order("read DESC")


        if (params[:sort] == "title" )
            @books = Book.all.order("title ASC")

        elsif (params[:sort] == "date" )
            @books = Book.all.order("read DESC")

        else (params[:sort] == "rating" )
            @books = Book.all.order("rating DESC")
         end 
  end

  def new
    @book = Book.new
  end 

  def create 
    @book = Book.new(books_params)

    
    @status = params[:status] 
    @book.status = @status.to_s

    @read = params[:read]
    @book.read = @read.to_s   

    @thumburl = params[:thumburl]


    if @book.save
      flash[:success] = "Your Book was created successfully!"
      redirect_to books_path
    else
      render :new
    end
  end 

  def show
    @book = Book.find(params[:id])
  end 
  
  def findabook
  end 

  def fabresult
    @isbn = params[:q]  
  end


private
  def books_params
    params.require(:book).permit(:isbn, :title, :shortsummary, :longsummary, :rating, :read, :status, :thumburl)
  end

end


