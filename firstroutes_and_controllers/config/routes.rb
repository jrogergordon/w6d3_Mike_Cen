Rails.application.routes.draw do
  get '/users/:id', to: 'users#show', as: 'show_user'
  get '/users', to: 'users#index', as: 'index_user'
  post  '/users', to: 'users#create', as: 'user'
  get    '/users/new', to: 'users#new', as: 'user_new'
  get    '/users/:id/edit', to: 'users#edit', as: 'user_edit'
  patch  '/users/:id', to: 'users#update', as: 'user_patch'
  put    '/users/:id', to: 'users#update', as: 'user_update'
  delete '/users/:id', to: 'users#destroy', as: 'user_destroy'

  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
