Rails.application.routes.draw do
  devise_for :users
  root to: "buildings#index"

  resources :buildings
  resources :owners
  resources :representatives
  resources :syndics
  resources :contacts
end
