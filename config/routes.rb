Rails.application.routes.draw do
  resources :seller_reviews
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  #get 'products/index'
  #root 'products#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"


  #

  root 'site#index'

  get 'products/wait'
  get 'site/browse'
  get 'used_products/index'

  post 'site/browse' => 'site#browse', :as =>:site_browse_post
  #get 'browse' => 'site#browse'

  match '/contacts', to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]

  get 'used_products/page_by_category'
  post 'used_products/page_by_category' => 'used_products#page_by_category', :as =>:used_products_pagebycategory_post
  #resources "seller"


  get 'admin/products/productmap/:id' => 'admin/products#productmap', :as => :admin_product_mapping
  post 'admin/products/productmap/:id' => 'admin/products#productmap', :as => :admin_product_mapping_post

  post 'admin/products/assignid' => 'admin/products#assignid', :as => :admin_product_mapping_assignid_post
  post 'admin/products/removeid' => 'admin/products#removeid', :as => :admin_product_mapping_removeid_post

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):


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

  get 'compare' => 'compares#compare'

  resources :products do
    get :autocomplete_product_name, on: :collection
  end

  resources :products do
    resources :product_reviews
    resources :used_products
  end

  resources :sellers do
    resources :seller_reviews
  end

end
