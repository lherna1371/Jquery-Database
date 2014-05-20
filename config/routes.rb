Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index' #index and map view
  
  get '/user' => 'user#profile', as: :user_profile
  get '/user/notification' => 'user#notification', as: :notification # notification view
  get '/user/settings' => 'user#settings', as: :user_settings #user selects preferences and edits editable user fields 
  
  get '/map/list' => 'map#list_view', as: :map_list_view #map list view 
  
  get '/partner' => 'partner#index', as: :partner_list #list of partners
  get '/partner/info' => 'partner#show', as: :partner_show_individual #view partner profile
  
  
  
  
  get '/admin/create_partner' => 'admin#create_partner', as: :create_partner #allow admin to create partners 
  
  get '/partner/login' => 'partner#login', as: :partner_login #login for partner, will be required to login prior to creating activity 
  get '/partner/create_activity' => 'partner#create_activity', as: :create_activity #allow partners to create activities
  post '/partner/create_activity_new' => 'partner#create_activity_new', as: :create_activity_new #allow partners to create activities
  
  
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
