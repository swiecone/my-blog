class StaticPagesController < ApplicationController
#    Needed Static Pages: Home, Blog , Learning  ,About, Contact
  #@english_language = true
  
  def home
  end

  def blog
  end

  def learning
        @books = Book.all
  end

  def about 
  end 

  def contact 
  end 

   def post 
  end 

  def now
  end 

  def advise
  end 

  def books
    @books = Book.all
  end 

  def moocs
  end 

  def language
  end 

  def english
    @english_language = true
    
    redirect_to root_path
  end  

  def spanish
    @english_language = false
    
    redirect_to root_path
  end 

 private 


end


