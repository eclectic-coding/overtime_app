Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :admin_users
      resources :posts

      root to: "users#index"
    end
  devise_for :users, skip: [:registration]

  root "static#home"

  resources :posts

end
