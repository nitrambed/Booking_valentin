Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :valentins, only: [:index, :show, :new, :destroy]
  
  resources :valentins do
    resources :reviews, only: [:index, :new]
    resources :bookings, only: [:new]
  end

  resources :bookings, only: [:index, :edit, :destroy]
end
