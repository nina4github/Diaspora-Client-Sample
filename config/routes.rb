SampleApp::Application.routes.draw do

  resources :events

  devise_for :users

  mount DiasporaClient::App.new => '/auth/diaspora'
  
  resources :activities

  match 'activities/:id/contacts' => 'activities#contacts' #, :as => :activityname # why I don't comment?! 
  match 'activities/:id/stream' => 'activities#stream'
  match 'activities/:id/last' => 'activities#last'
  match 'activities/:id/week' => 'activities#week'
  match 'profiles/:id' => 'activities#profiles'
  match 'group/' => 'activities#group' # creates a new group of people for a specific activity. It does not need a user to operate, but just to authenticate
  
  match 'geniehub/status' => 'geniehub#status' # function to return the current status to a javascript call 
  match 'geniehub/listener' => 'geniehub#listener'
  
 
  
  
  resources :status # todelete
  
  match 'exit' => 'home#logout', :as => :logout
  
  resources :upload
  root :to => "home#show"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
