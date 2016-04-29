class BooksController < ApplicationController
#    Needed Static Pages: Home, Blog , Learning  ,About, Contact
  #@english_language = true
  
  def index
        @books = Book.all
  end

  def new
  end 

  
  def findabook
  end 

 private 


end


