Rails.application.routes.draw do
  #get 'systems/system'
  #get 'system', controller: :systems, action: :system, alias: 'system'

  devise_for :users

  resources :districts

  #get 'reservations/reservation'
  get 'reservation', controller: :reservations, action: :reservation, alias: 'reservation'
  #get 'services/service'
  get 'service', controller: :services, action: :service, alias: 'service'
  #get 'cars/car'
  get 'car', controller: :cars, action: :car, alias: 'car'
  get 'home/index'
  #root 'home#index'
  root 'home#index', constraints: lambda { |request| !request.env['warden'].user }
  root to: 'home#index', as: 'passenger_root',  constraints: lambda { |request| !request.env['warden'].user.passenger? }
  root to: 'systems#system', as: 'driver_root', constraints: lambda { |request| !request.env['warden'].user.driver? }
  root to: 'systems#system', as: 'user_root', constraints: lambda { |request| !request.env['warden'].user.user? }
  root to: 'systems#system', as: 'administrator_root', constraints: lambda { |request| !request.env['warden'].user.administrator? }
  
  #resources :users_sessions
  #match 'login' => 'user_sessions#new', as: login
  #match 'logout' => 'user_sessions#destroy', as: logout

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
