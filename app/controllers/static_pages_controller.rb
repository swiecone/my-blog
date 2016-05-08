class StaticPagesController < ApplicationController
#    Needed Static Pages: Home, Blog , Learning  ,About, Contact
  #@english_language = true
  
  skip_before_filter :verify_authenticity_token

  def home
  end

  def blog
  end

  def learning
        @books = Book.where(status: "In Progress")
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

  def findabook
  end 

  def thankyou
    @name = params[:name]
    @email = params[:email]
    @phone = params[:phone]
    @message = params[:message]
    
    @contact = Contact.new(name: @name, email: @email, phone: @phone, message: @message)
    
      if @contact.save
        flash[:success] = "Your message was sent successfully!"
    else
        flash[:danger] = "Your message was not sent."
        render :new
    end

  end 

 private 

  # def contact_params
  #   params.require(:contact).permit(:name, :email, :phone, :message)
  # end 



end


