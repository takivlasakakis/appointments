Rails.application.routes.draw do
	resources :reviews
  post '/rate' => 'rater#create', :as => 'rate'
resources :appointments
	root 'users#index'
	#User routes
  get '/signup' => 'users#new'
	get '/users' => 'users#index'
	post '/users' => 'users#create'
	get '/profile' => 'users#show'
	#Sessions routes
  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'
  post '/sessions' => 'sessions#create'


	get '/appointments' => 'appointments#index'
	# get '/register' => 'users#new'
	# get '/sessions/new' => 'sessions#new'
	# get '/sessions/delete' => 'sessions#destroy'
	get '/appointments/new' => 'appointments#new'
	post  '/appointments' => 'appointments#create'
	get '/student' => 'appointments#student'
	get '/appointments/success' => 'appointments#success'
	get '/appointments/:id' => 'appointments#show'
	post '/reviews' => 'reviews#new'
	# get '/appointments/:id' => 'appointments#show'
	put '/appointments/:id' => 'appointments#edit'
	get '/appointments/:id/edit' => 'appointments#edit'
	# post '/appointments/:id/edit' => 'appointments#edit'

	
end
