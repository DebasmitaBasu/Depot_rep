Depot::Application.routes.draw do
  get "admin/index"
  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"

  get 'admin' => 'admin#index'

controller :sessions do
 get 'login' => :new
 post 'login' => :create
 delete 'logout' => :destroy
end

scope '(:locale)' do
resources :users
resources :orders
resources :line_items
resources :carts
resources :products do
  get :who_bought, :on => :member
end
root :to => 'store#index', :as => 'store'
end



  resources :users
 
  resources :orders

  resources :line_items

  resources :carts

  get "store/index"
resources :products
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

  #
end
