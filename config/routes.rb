Rails.application.routes.draw do


  # Routes for the Modification resource:
  # CREATE
  get '/modifications/new', controller: 'modifications', action: 'new', as: 'new_modification'
  post '/modifications', controller: 'modifications', action: 'create', as: 'modifications'

  # READ
  get '/modifications', controller: 'modifications', action: 'index'
  get '/modifications/:id', controller: 'modifications', action: 'show', as: 'modification'

  # UPDATE
  get '/modifications/:id/edit', controller: 'modifications', action: 'edit', as: 'edit_modification'
  patch '/modifications/:id', controller: 'modifications', action: 'update'

  # DELETE
  delete '/modifications/:id', controller: 'modifications', action: 'destroy'

 root "posts#index"
 
  #------------------------------

  # Routes for the Car resource:
  # CREATE
  get '/cars/new', controller: 'cars', action: 'new', as: 'new_car'
  post '/cars', controller: 'cars', action: 'create', as: 'cars'

  # READ
  get '/cars', controller: 'cars', action: 'index'
  get '/cars/:id', controller: 'cars', action: 'show', as: 'car'

  # UPDATE
  get '/cars/:id/edit', controller: 'cars', action: 'edit', as: 'edit_car'
  patch '/cars/:id', controller: 'cars', action: 'update'

  # DELETE
  delete '/cars/:id', controller: 'cars', action: 'destroy'

  #------------------------------

  # Routes for the Lap resource:
  # CREATE
  get '/laps/new', controller: 'laps', action: 'new', as: 'new_lap'
  post '/laps', controller: 'laps', action: 'create', as: 'laps'

  # READ
  get '/laps', controller: 'laps', action: 'index'
  get '/laps/:id', controller: 'laps', action: 'show', as: 'lap'

  # UPDATE
  get '/laps/:id/edit', controller: 'laps', action: 'edit', as: 'edit_lap'
  patch '/laps/:id', controller: 'laps', action: 'update'

  # DELETE
  delete '/laps/:id', controller: 'laps', action: 'destroy'
  #------------------------------

  # Routes for the Track resource:
  # CREATE
  get '/tracks/new', controller: 'tracks', action: 'new', as: 'new_track'
  post '/tracks', controller: 'tracks', action: 'create', as: 'tracks'

  # READ
  get '/tracks', controller: 'tracks', action: 'index'
  get '/tracks/:id', controller: 'tracks', action: 'show', as: 'track'

  # UPDATE
  get '/tracks/:id/edit', controller: 'tracks', action: 'edit', as: 'edit_track'
  patch '/tracks/:id', controller: 'tracks', action: 'update'

  # DELETE
  delete '/tracks/:id', controller: 'tracks', action: 'destroy'
  #------------------------------

  # Routes for the Experience resource:
  # CREATE
  get '/experiences/new', controller: 'experiences', action: 'new', as: 'new_experience'
  post '/experiences', controller: 'experiences', action: 'create', as: 'experiences'

  # READ
  get '/experiences', controller: 'experiences', action: 'index'
  get '/experiences/:id', controller: 'experiences', action: 'show', as: 'experience'

  # UPDATE
  get '/experiences/:id/edit', controller: 'experiences', action: 'edit', as: 'edit_experience'
  patch '/experiences/:id', controller: 'experiences', action: 'update'

  # DELETE
  delete '/experiences/:id', controller: 'experiences', action: 'destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create', as: 'users'

  # READ
  get '/users', controller: 'users', action: 'index'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  patch '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

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
