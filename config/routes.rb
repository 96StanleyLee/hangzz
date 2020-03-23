Rails.application.routes.draw do

  root to: 'users#show'

  resources :location_types
  resources :locations
  resources :meetups
  resources :memberships
  resources :groups
  # TODO: Nest meetup routes under groups.
  resources :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
