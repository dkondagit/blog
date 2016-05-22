Rails.application.routes.draw do
  resources :users
 
  resources :sessions, only: [:new, :create, :destroy]
  
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  

  resources :articles do
    resources :comments
  end 

  root 'welcome#index'


end
