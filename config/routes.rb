require 'sidekiq/web'
Rails.application.routes.draw do
  resources :books do
    member do
      put "add", to: "books#library"
      put "remove", to: "books#library"
    end
  end
  devise_for :users, controllers: { registrations: "registrations" }
  resources :library, only:[:index]
  resources :pricing, only:[:index]
  resources :subscriptions
  root to: "books#index"
end
