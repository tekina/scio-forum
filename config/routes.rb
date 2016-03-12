Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :chapters
    root to: "users#index"
  end
  root to: 'visitors#index'
  devise_for :users
  resources :users
  
  get '/my_account' => 'users#my_account'
  
end
