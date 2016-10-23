Rails.application.routes.draw do

get 'test', to: 'test#jeff'

get 'accounts', to: 'accounts#index'

get 'account', to: 'accounts#show'

end
