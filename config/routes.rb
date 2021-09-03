Rails.application.routes.draw do
  resources :pets, only: [:index, :show, :create, :destroy]
  
  post '/signup', to: 'users#create'
  get '/me', to: 'users#show'
  resources :users, only: [:update, :destroy]

  post '/login', to: 'sessions#login'
  delete '/logout', to: 'sessions#logout'
end
