Rails.application.routes.draw do

  resources :alliens

  resources :users

  post '/login', to: 'authentication#authenticate'

  post '/signup', to: "users#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
