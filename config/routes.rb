Rails.application.routes.draw do
  resources :conversations
  resources :messages
  resources :users
  # get "login" to: "sessions#new", as "login"
  # get "login" to: "sessions#new", as "logout"
  # root to: "main#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
