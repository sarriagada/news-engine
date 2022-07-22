Rails.application.routes.draw do
  resources :articles
  root to: "home#index"

  namespace :admin do
    root to: "dashboard#index"
  end
end
