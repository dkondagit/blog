Rails.application.routes.draw do
  resources :users
 
  resources :sessions, only: [:new, :create, :destroy]
  
  resources :microposts, only: [:create, :destroy]
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  


  root to: 'welcome#index'


end
