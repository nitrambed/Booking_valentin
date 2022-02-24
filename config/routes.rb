Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/search', to: 'pages#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :valentins, only: [:index, :show, :new, :create, :destroy] do
    resources :reviews, only: [:index, :new, :create]
    resources :bookings, only: [:new]
  end

  resources :reviews, only: [:show, :destroy]
  resources :bookings, only: [:index, :show, :create, :edit, :update, :destroy]
end
