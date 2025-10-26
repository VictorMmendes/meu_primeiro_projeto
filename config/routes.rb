Rails.application.routes.draw do
  resources :posts
  root "users#index"

  resources :users
  resource :sessions, only: [ :new, :create, :destroy ]

  get "login", to: "sessions#new"
  delete "logout", to: "sessions#destroy"
end
