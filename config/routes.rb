# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#auth'

  # Get login token from Knock
  post 'user_token', to: 'user_token#create'

  # User actions
  post '/users', to: 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
