Makerbeastro::Application.routes.draw do
 

  resources :meals do
    resources :ingredients 
  end

  # resources :menus
  # get '/menu', to: 'menu#index'



  root 'meals#index'

  # match '/ingredients', to: 'ingredients#show_all', via: [:get]
  # match '/ingredients', to: 'ingredients#show_all', via: [:post]
  # match '/ingredients/new', to: 'ingredients#new_ingredient', via: [:get]
  # match '/ingredients/:id', to: 'ingredients#ingredient', via: [:get, :patch, :put, :delete], as: 'ingredient'

  get 'ingredients', to: 'ingredients#show_all'
  post 'ingredients', to: 'ingredients#create_ingredient'
  
  get 'ingredients/new', to: 'ingredients#new_ingredient'
  get 'ingredients/:id', to: 'ingredients#show_ingredient', as: 'ingredient'
  delete 'ingredients/:id', to: 'ingredients#delete_ingredient'
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
