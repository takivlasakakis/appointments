Rails.application.routes.draw do

resources :users do
    resources :appointments
end

root 'user#index'

end
