Rails.application.routes.draw do
  
  devise_for :users 
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'  
  
end

  root 'posts#homepage', as:'home'


  get 'about' => 'pages#about', as: 'about'
 
  get 'rental2' => 'pages#listfindapt', as: 'rental2'
  
  get 'index' => 'posts#index', as: 'apartment'
 
  resources :posts 
  

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
