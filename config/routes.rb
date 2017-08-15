Rails.application.routes.draw do
 root 'sessions#new'

 resources :sessions, only: [:create, :destroy]
 resources :items
 resources :users do
  resources :logs
 end


 get '/login', to: 'sessions#new', as: "login"

end
