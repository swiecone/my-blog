module ApplicationHelper
	
	def book_thumbnail(book)
	   	 b = GoogleBook::Book.new(:api_key => "AIzaSyDE0VW_-8EjjPrUJgYbZpjBylZS0w-wj2M") 
    	 b.search("#{book.isbn}",5) 
    	 if b == nil
    	 	return nil
    	 else 
 	     	b.books.first.small_thumbnail_link
 	     end 
	end

	def book_title(book)
		 b = GoogleBook::Book.new(:api_key => "AIzaSyDE0VW_-8EjjPrUJgYbZpjBylZS0w-wj2M") 
   		 b.search("#{book.isbn}",5) 
 		
 		 if b == nil
    	 	return nil
    	 else 
    	 	return  b.books.first.get_title
    	 end 
	end 
end
