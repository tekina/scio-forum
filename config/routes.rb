Rails.application.routes.draw do
  resources :posts
  namespace :admin do
    resources :users
    resources :chapters
    resources :posts
    root to: "users#index"
  end
  root to: 'visitors#index'
  devise_for :users
  resources :users
  
  get '/my_account' => 'users#my_account'
  
end
