Rails.application.routes.draw do
  # root to: 'hello#index'
  # get '/users', to: 'users#index'
  # get '/users/new' ,to: 'users#new'
  # post '/users', to: 'users#create'
  # get '/users/:id/edit', to: 'users#edit', as: :edit_user
  # put '/users/:id', to: 'users#update', as: :update_user
  # delete '/users/:id', to: 'users#destroy', as: :delete_user
  resources :users
end
