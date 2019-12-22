Rails.application.routes.draw do
  resources :labels
  root "tasks#index"
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :tasks

  namespace :admin do
    resources :users
  end

  get '*not_found' => 'application#routing_error'
  post '*not_found' => 'application#routing_error'
end
