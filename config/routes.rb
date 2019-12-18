Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :contacts, only: [:index, :new, :create, :destroy]
end
