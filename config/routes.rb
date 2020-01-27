Rails.application.routes.draw do
  devise_for :experts, controllers: {
        registrations: 'experts/registrations'
      }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "experts#index"
  resources :experts
  resources :friend_requests
end
