Rails.application.routes.draw do
  resources :users

  root to: "home#index"
  
  get 'login' => 'user_sessions#new', :as => :login
  post 'login' => "user_sessions#create"
  post 'logout' => 'user_sessions#destroy', :as => :logout
  get 'admin/dashboard' => 'admin/dashboard#index'
  
  namespace :admin do
    root to: "dashboard#index"
    resources :articles
  end
end
