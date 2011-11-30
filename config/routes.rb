Studyhunter::Application.routes.draw do

  # I temporarily set the root page to be list of locations. We can change it later.
  root :to => "locations#index"

  devise_for :users, :controllers => { :registrations => "registrations" }

  resources :assignments
  resources :students
  resources :project_memberships
  resources :study_sessions
  resources :project_instances
  resources :locations
  resources :comments
  resources :project_classes
  resources :courses
  resources :universities

  match "projects/:id/edit" => "project_classes#edit"
  match "projects/new" => "project_classes#new"
  match "projects/" => "project_classes#index"
  match "projects/:id" => "project_classes#show"

  devise_scope :user do
    get "sign_in", :to => "devise/sessions#new"
    get "sign_up", :to => "registrations#new"
    get "edit_account", :to => "registrations#edit"
    get "my_account", :to => "registrations#show"
  end

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
