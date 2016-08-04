Rails.application.routes.draw do

# resource :users 
# resource :appointments
# resource :sessions

	root 'users#index'

	get '/users' => 'users#index'
	get '/users/new' => 'users#new'
	post '/users' => 'users#create'
	get '/users/:id' => 'users#show'


	get '/sessions/new' => 'sessions#new'
	get '/sessions/show' => 'sessions#show'
	get '/sessions/delete' => 'sessions#destroy'
  post '/sessions' => 'sessions#create'



  # get '/login' => 'sessions#new'
  # get '/logout' => 'sessions#destroy'
  # get '/signup' => 'users#new'
  # post '/users' => 'users#create'
end
