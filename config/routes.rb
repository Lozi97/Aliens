Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      post '/login', to: 'authentication#authenticate'
      namespace :user do
        # post '/signup', to: 'users#create'
        resources :user, only: [:create]
        resources :alliens, only: [:index, :show]
      end
      namespace :admin do
        resources :alliens
        resources :users
      end
    end
  end

end
