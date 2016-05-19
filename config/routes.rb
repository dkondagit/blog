Rails.application.routes.draw do
  get 'users/new'

  get 'users/new'

  resources :users
  

  resources :articles do
    resources :comments
  end 

  root 'welcome#index'

  get "users/new"
 
 
  get '/signup',  :to => "users#new"
 
  


end
