Rails.application.routes.draw do
  resources :location_types
  resources :locations
  resources :meetups
  resources :memberships
  resources :groups
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
