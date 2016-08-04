Rails.application.routes.draw do

resources :users
resources :appointments
resources :sessions

  root 'users#index'
  get '/profile' => 'users#show'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
end
