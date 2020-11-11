Rails.application.routes.draw do
  resources :meal_recipes
  resources :day_meals, only: [:index, :show]
  resources :meals, only: [:index, :show]
  resources :days, only: [:index, :show]
  resources :calendars, only: [:index, :show, :create]
  resources :user_recipes
  resources :recipes
  resources :users, only: [:create, :index]
  resources :follows, only: [:create, :destroy]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
