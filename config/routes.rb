Rails.application.routes.draw do
  resources :reviews

  resources :users do
      resources :appointments
  end

  root 'user#index'

end
