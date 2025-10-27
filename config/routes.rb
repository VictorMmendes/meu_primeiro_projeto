Rails.application.routes.draw do
  resources :comments
  resources :posts do
    resources :comments, only: [ :create, :destroy ]
  end
  root "users#index"

  resources :users
  resource :sessions, only: [ :new, :create, :destroy ]

  get "login", to: "sessions#new"
  get "logout", to: "sessions#destroy"
end
