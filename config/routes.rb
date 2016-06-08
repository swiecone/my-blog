Rails.application.routes.draw do

  # users
  resources :users, except: [:new]

  # book routes 
  resources :books

  # mooc routes
  resources :moocs

  # this is to see the people that have contacted through the form
  resources :contacts , only: [:index]

  #    Needed Static Pages: Home, Blog , Learnings  ,About, Contact
  root             'static_pages#home'
  get 'home'    => 'static_pages#home'
  get 'blog'    => 'static_pages#blog'
  get 'learning'    => 'static_pages#learning'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'  
  post '/mail/contact_me.php' => 'static_pages#thankyou' 
  get 'post'   => 'static_pages#post'
  get 'now' => 'static_pages#now'
  get 'english' => 'static_pages#english'
  get 'spanish' => 'static_pages#spanish'
  get 'advise' => 'static_pages#advise'
  # get 'moocs' => 'static_pages#moocs'
  get 'findabook' => 'books#findabook'
  post 'findabook' => 'books#fabresult'

  # posts 
  get 'mindfulrw' => 'post#mindfulrw'
  get 'ux' => 'post#ux'
  get 'joincs' => 'post#joincs'
  get 'heavydoc' => 'post#heavydoc'
  get 'loop' => 'post#loop'
  get 'consciouspm' => 'post#consciouspm'
  get 'language' => 'post#language'
  get 'takesanetwork' => 'post#takesanetwork'


  # login and logout to the site
  get '/login', to: 'logins#new'
  post '/login', to: 'logins#create'
  get 'logout', to: 'logins#destroy'
end
