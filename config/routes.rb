Rails.application.routes.draw do

  root to: 'users#index'

  resources :location_types
  resources :locations
  # TODO: Nest meetup routes under groups.
  resources :groups do 
    resources :meetups
  end 

  resources :users do 
    resources :memberships, only: [:new, :create, :delete]
  end 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
