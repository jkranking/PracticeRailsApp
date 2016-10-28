Rails.application.routes.draw do

  root to: 'home#home'

  resources :users, only: [:index, :show, :create, :new, :update]

  resources :accounts, only: [:index, :show] do 
    resources :users, only: [:index, :show]
  end 
end 
