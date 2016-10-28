Rails.application.routes.draw do

  root to: 'home#home'

  resources :users, except: [:edit, :update]

  resources :accounts, only: [:index, :show] do 
    resources :users, only: [:index, :show]
  end 
end 
