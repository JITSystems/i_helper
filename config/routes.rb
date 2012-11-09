IHelper::Application.routes.draw do

  	resources :users
  	resources :sessions
	resources :messages
	resources :calls
	resources :visitors

	get "sign_up" => "users#new", :as => "sign_up"
	get "log_in" => "sessions#new", :as => "log_in"
	get "log_out" => "sessions#destroy", :as => "log_out"
	

	root :to => 'main#index'
end
