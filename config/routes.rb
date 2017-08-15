Rails.application.routes.draw do
 root 'sessions#new'

 resources :sessions, only: [:create, :destroy]
 resources :users do
  resources :logs
 end


 get '/login', to: 'sessions#new', as: "login"

end
