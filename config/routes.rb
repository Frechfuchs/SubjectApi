Rails.application.routes.draw do
  resources :subjects
  get 'subject_data/:id', to: 'subject_data#show', as: 'subject_data/show'

  devise_for :users
  get "users/index"
  
  root "pages#home"

  #api
  namespace :api do
    namespace :v1 do
      resources :subject_data, only: [:create]
    end
  end
end
