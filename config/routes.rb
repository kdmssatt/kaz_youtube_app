Rails.application.routes.draw do
  
  root   'static_pages#home'
  get    '/signup',    to: 'users#new'
  get    '/all_users', to: 'users#everybody'
  get    '/login',     to: 'sessions#new'
  post   '/login',     to: 'sessions#create'
  delete '/logout',    to: 'sessions#destroy'
  resources :users
  resources :videos
end
