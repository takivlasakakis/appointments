Rails.application.routes.draw do

	root 'users#index'
	#User routes
  get '/signup' => 'users#new'
	get '/users' => 'users#index'
	post '/users' => 'users#create'
	get '/users/:id' => 'users#show'
	#Sessions routes
  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'
	get '/sessions/show' => 'sessions#show'
  post '/sessions' => 'sessions#create'
	# get '/users/new' => 'users#new'
	# get '/sessions/new' => 'sessions#new'
	# get '/sessions/delete' => 'sessions#destroy'

end
