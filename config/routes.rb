# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "api/v1/homes#index"

  namespace :api do
    namespace :v1 do
      resources :homes, only: [:index]
    end
  end

  post '/signup', to: 'users#create'

end
