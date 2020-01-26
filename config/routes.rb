Rails.application.routes.draw do
  devise_for :experts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :experts
  resources :friend_requests
  resources :friendships
end
