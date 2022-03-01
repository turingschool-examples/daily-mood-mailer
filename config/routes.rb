require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => "/sidekiq"

  root to: 'home#show'
  get "/sent", to: "mailers#sent"
  resources :mailers, only: [:create]
end
