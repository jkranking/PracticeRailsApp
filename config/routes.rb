Rails.application.routes.draw do

get 'test', to: 'test#jeff'

get 'accounts', to: 'accounts#index'

get 'accounts/:id', to: 'accounts#show'

end
