Rails.application.routes.draw do
 root 'sessions#new'

 resources :sessions, only: [:create, :destroy]
 resources :users 
 resources :logs


 get '/login', to: 'sessions#new', as: "login"

end
