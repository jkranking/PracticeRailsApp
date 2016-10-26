Rails.application.routes.draw do

root to: 'accounts#index'

# get '/accounts/:id/users', to: 'accounts#users_index', as: 'accounts_users'

  resources :users, only: [:index, :show]

  resources :accounts, only: [:index, :show] do 
    resources :users, only: [:index, :show]
  end 
end 
