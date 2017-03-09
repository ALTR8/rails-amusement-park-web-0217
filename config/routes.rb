Rails.application.routes.draw do

  root 'static#home'

  get    '/signin',   to: 'sessions#new'
  post   '/signin',   to: 'sessions#create'
  delete '/signin',  to: 'sessions#destroy'


  resources :attractions

  resources :users

  resources :rides

  # resources :sessions, only: [:new, :create]




end