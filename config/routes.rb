Spree::Core::Engine.routes.draw do
  #get "static_pages/index"

  # Add your extension routes here
	Spree::Core::Engine.routes.draw do
  #get "static_pages/index" 

		get "/price" => "home#price"
	  	match "users/:id/send_email" => "users#send_email", :as => "users_send_email"
      match "orders/:id/confirmation" => "orders#confirmation", :as => "orders_confirmation"
      match "paypal_payment" => "orders#paypal_payment", :as => "orders_paypal_payment"
      match "payment_options" => "home#payment_options", :as => "home_payment_options"
      match "payment" => "users#payment"
      match "profile" => "users#profile"
      match "auctions" => "users#auctions"
#      get '/static_pages/index', :to => 'Admin/StaticPages#index'
#      get '/static_pages/new', :to => 'Admin/StaticPages#new' 
#      #post '/', :to => 'Admin/StaticPages#create'
      namespace :admin do
        resources :static_pages
        resources :categories
        resources :author_bios
         resources :navigations
      end
      
      resources :view_categories
	end
end
