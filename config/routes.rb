Rails.application.routes.draw do
  resources :users

  resources :appointments

  resources :reviews

  get 'welcome/index'
  root 'welcome#index'
end
