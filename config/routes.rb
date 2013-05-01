Adventure::Application.routes.draw do


  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  
  
  root :to => "home#home"

  match 'activity/' => 'activity#view'
  match 'user/new' => 'users#new'
  match 'home/' => 'home#userHome'

  match 'activity/new' => 'activity#new', :as => :new
  match 'activity/create' => 'activity#create', :as => :create
  resources :users
  resources :sessions
end
