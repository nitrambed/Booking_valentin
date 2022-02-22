Rails.application.routes.draw do
  get 'reviews/index'
  get 'reviews/new'
  get 'reviews/create'
  get 'reviews/update'
  get 'reviews/edit'
  get 'reviews/delete'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :valentins, only: [:index, :show, :new, :create, :destroy]

  resources :valentins do
    resources :reviews, only: [:index, :new, :create]
    resources :bookings, only: [:new]
  end

  resources :bookings, only: [:index, :show, :create, :edit, :update, :destroy]
end
