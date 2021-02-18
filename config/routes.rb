Rails.application.routes.draw do
  resources :exercises, only: [:index]
  resources :workouts, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :show]
  post '/signup', to: "users#create"
  post '/login', to: "auth#create"
  get '/persist', to: "auth#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
