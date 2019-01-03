Rails.application.routes.draw do
  resources :posts
  get "sessions/new"
  get "home/index"

  resources :events
  resources :locations
  resources :activities
  resources :users
  root "home#index"

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/logout', to: "sessions#destroy"
  get '/signup', to: "users#new", as: "signup"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
#
# get 'heartbeat' => "custom_controller#heartbeat"
# custom_controller.rb:
#
# class CustomController < ApplicationController
#   def heartbeat
#     render inline: "Some string to the client/user"
#   end
# end
