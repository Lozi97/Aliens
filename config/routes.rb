Rails.application.routes.draw do

  post '/login', to: 'authentication#authenticate'

  namespace :user do
    post '/signup', to: 'users#create'
    resources :alliens, only: [:index, :show]
  end
  
  namespace :admin do
    resources :alliens
    resources :users
  end

end
