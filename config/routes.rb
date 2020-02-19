Rails.application.routes.draw do
  devise_for :users
  root to: "chats#index"

  resources :contacts, only: [:index, :new, :create, :destroy]
  resources :chats, only: [:index, :show] do
    resources :messages, only: :create, defaults: { format: :js }
  end
end
