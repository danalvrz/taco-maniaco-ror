Rails.application.routes.draw do
  devise_for :users
  resources :inventory_foods
  resources :inventories
  resources :recipie_foods
  resources :foods
  resources :recipes
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
