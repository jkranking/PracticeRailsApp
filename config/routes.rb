Rails.application.routes.draw do

  root to: 'accounts#index'

  resources :users, only: [:index, :show, :create, :new, :update]

  resources :accounts, only: [:index, :show] do 
    resources :users, only: [:index, :show]
  end 
end 
