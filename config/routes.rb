Rails.application.routes.draw do
  resources :user_sessions
  resources :sessions
  resources :user_communities
  resources :communities
  resources :games
  resources :users
  

  get "/login", to: "logins#new"
  post "/login", to: "logins#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end