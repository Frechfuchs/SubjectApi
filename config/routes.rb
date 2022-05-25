Rails.application.routes.draw do
  resources :subjects
  
  #match '/users',   to: 'users#index',   via: 'get'
  devise_for :users
  get "users/index"
  
  root "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  #root "home#index"
end
