Rails.application.routes.draw do
  devise_for :users
  resources :cars
  root "home#dashboard"
  resources :phones
end
