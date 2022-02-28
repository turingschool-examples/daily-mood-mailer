Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#show'
  get "/sent", to: "mailers#sent"
  resources :mailers, only: [:create]
end
