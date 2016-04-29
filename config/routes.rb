Rails.application.routes.draw do

  resources :books

  #    Needed Static Pages: Home, Blog , Learnings  ,About, Contact
  root             'static_pages#home'
  get 'home'    => 'static_pages#home'
  get 'blog'    => 'static_pages#blog'
  get 'learning'    => 'static_pages#learning'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'   
  get 'post'   => 'static_pages#post'
  get 'now' => 'static_pages#now'
  get 'english' => 'static_pages#english'
  get 'spanish' => 'static_pages#spanish'
  get 'advise' => 'static_pages#advise'
  get 'moocs' => 'static_pages#moocs'
  get 'findabook' => 'static_pages#findabook'
  # get 'books' => 'static_pages#books'
  


  # posts 
  get 'mindfulrw' => 'post#mindfulrw'
  get 'ux' => 'post#ux'
  get 'joincs' => 'post#joincs'
  get 'heavydoc' => 'post#heavydoc'
  get 'loop' => 'post#loop'
  get 'consciouspm' => 'post#consciouspm'
  get 'language' => 'post#language'







  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
