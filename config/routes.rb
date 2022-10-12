Rails.application.routes.draw do

  resources :foods
  devise_for :users
  resources :users
  resources :inventoris
  get 'inventory_foods/:id/new', to: 'inventory_foods#new'
  delete 'inventory_foods/:id/destroy/:food_id', to: 'inventory_foods#destroy'
  post 'inventory_foods/:id/create', to: 'inventory_foods#create'
  root 'users#index'

  resources :recipes, only: [:index, :show, :destroy, :new, :create] do
    resources :recipe_foods, only: [:index, :edit, :destroy]
  end

  namespace :public_recipes do
    get '', action: 'index'
    get '/:id', action: 'show'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
