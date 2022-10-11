Rails.application.routes.draw do

  resources :foods
  devise_for :users
  resources :users
  resources :inventoris
  root 'users#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
