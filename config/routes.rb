Rails.application.routes.draw do
  
  
  get "/", to: "application#home", as: "home"
  
  
  resources :user_sessions
  resources :sessions
  resources :user_communities
  resources :communities
  resources :games
  resources :users
  resources :posts, only: [:create, :show]
  resources :comments, only: [:create]

  get "/login", to: "logins#new"
  post "/login", to: "logins#create"
  delete "/logout", to: "logins#logout"

  get "/session/:id", to: "sessions#remove_user", as: "remove_user"
  post "/session/:id", to: "sessions#join_session", as: "join_session"

  post "/community/:id", to: "communities#join_community", as: "join_community"

  get "/user/:id", to: "users#new_post", as: "new_post"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end