class BooksController < ApplicationController
#    Needed Static Pages: Home, Blog , Learning  ,About, Contact
  #@english_language = true
  
  def index
        @books = Book.all
  end

  def new
    @book = Book.new
  end 

  def create 
    @book = Book.new(books_params)


    if @book.save
      flash[:success] = "Your Book was created successfuly!"
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

private
  def books_params
    params.require(:book).permit(:isbn, :title, :shortsummary, :longsummary, :rating, :read, :status, :thumburl)
  end

end


