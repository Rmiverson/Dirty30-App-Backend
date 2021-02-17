Rails.application.routes.draw do
  resources :exercises, only: [:index]
  resources :workouts, only: [:index, :create, :update, :delete]
  resources :users, only: [:index, :show]
  post '/signup', to: "users#create"
  post '/login', to: "auth#create"
  get '/persist', to: "auth#show"
  # get '/' => 'sessions#new'
  # get '/signup' => 'sessions#new'
  # post '/' => 'sessions#create'
  # post '/signup' => 'sessions#create'
  # post '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
