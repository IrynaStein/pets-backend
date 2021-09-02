Rails.application.routes.draw do
  resources :pets, only: [:index, :show, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/signup', to: 'users#create'
  get '/me', to: 'users#show'

  post '/login', to: 'sessions#login'
  delete '/logout', to: 'sessions#logout'
end
