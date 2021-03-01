Rails.application.routes.draw do
  # resources :secrets
  get 'show', to: 'secrets#show'

  get 'new', to: 'sessions#new',  as: 'login'
  get 'show/:id', to: 'sessions#show'
  post 'create', to: 'sessions#create'
  post 'destroy', to: 'sessions#destroy', as: 'logout'


  root to: "sessions#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
