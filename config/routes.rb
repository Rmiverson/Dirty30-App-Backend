Rails.application.routes.draw do
  resources :exercises, only: [:index]
  resources :workouts, only: [:index, :create, :update, :delete]
  resources :users, only: [:show, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
