Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'session/new'
  get 'users/new'
  get 'home' => 'page#home'
  
  get 'signup' => 'users#new'
  get 'login' => 'session#new'
  post 'login' => 'session#create'
  root 'page#main_home'
  resources :users
end
