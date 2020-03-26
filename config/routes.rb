Rails.application.routes.draw do

  # homepage
  root to: 'users#index'

  # alias rout for creating a new user
  get '/register', to: 'users#new'
  
  # routes for logging in and out
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy', as: 'logout'

  # standard routes
  resources :location_types
  resources :locations, param: :slug

  # nested routes
  resources :groups, param: :slug do 
    resources :meetups, param: :slug
  end 
  resources :users do 
    resources :memberships, only: [:new, :create, :delete]
  end 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
