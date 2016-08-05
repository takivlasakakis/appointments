Rails.application.routes.draw do

  resources :appointments

get 'user/index'


root 'users#index'

end
