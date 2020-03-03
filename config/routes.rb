Rails.application.routes.draw do
  devise_for :users
  resources :musicians do
    resources :bookings, only: [:new, :create]
    resources :favorites, only: [ :index, :new, :show, :create ]
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bands


end
