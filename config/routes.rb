Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      post '/login', to: 'authentication#authenticate'
      namespace :user do
        resources :users, only: [:create]
        resources :alliens, only: [:index, :show]
      end
      namespace :admin do
        resources :alliens
        resources :users
      end
    end
  end

end
