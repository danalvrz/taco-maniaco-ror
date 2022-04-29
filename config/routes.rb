Rails.application.routes.draw do
  devise_for :users
  resources :inventory_foods
  resources :inventories
  resources :foods
  resources :recipes do 
  resources :recipie_foods
  end
  
  
  #get 'recipie_foods/:recipe_id', to: 'recipie_foods#new'
  post '/recipes/:recipe_id/recipie_foods', to: 'recipie_foods#create', as: 'create_recipe_recipie_food'
  patch 'recipie_foods/:recipe_id', to: 'recipie_foods#update'
  get '/shopping_list/:recipe_id', to: "recipes#shopping_list"
  resources :users
  resources :public_recipes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
