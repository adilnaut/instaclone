Rails.application.routes.draw do

  root "static_pages#home"
  get "/about", to: "static_pages#about"
  get "/signup", to: "users#new"
  get "/signin", to: "sessions#new"
  post "signin", to: "sessions#create"
  delete "signout", to: "sessions#destroy"
  delete "/relationships", to: "relationships#destroy"

  resources :users
  resources :posts, except: :index
  resources :sessions, only: [:new, :destroy, :create]
  resources :relationships, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
