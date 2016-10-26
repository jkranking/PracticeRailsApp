Rails.application.routes.draw do

root to: 'accounts#index'

get '/accounts', to: 'accounts#index'

get '/accounts/:id', to: 'accounts#show', as: 'account'

get '/accounts/:id/users', to: 'accounts#users_index', as: 'accounts_users'

get '/users', to: 'users#index'

get '/users/:id', to: 'users#show', as: 'user'

end
