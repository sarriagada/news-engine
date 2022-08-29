Rails.application.routes.draw do
  root to: "home#index"

  namespace :admin do
    root to: "dashboard#index"
    resources :articles
  end
end
