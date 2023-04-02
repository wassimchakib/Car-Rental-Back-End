# frozen_string_literal: true

Rails.application.routes.draw do
  get 'reservations/create'
  get 'reservations/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "api/v1/homes#index"

  namespace :api do
    namespace :v1 do
      resources :homes, only: [:index]
      resources :reservations, only: [:create, :destroy]
    end
  end

  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'

end
