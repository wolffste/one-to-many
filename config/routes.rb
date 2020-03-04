  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  devise_for :users
  resources :favorites, only: [ :index, :new, :show, :create ]
  resources :musicians do
    resources :bookings, only: [:new, :create]
    member do
      post "bookmark"
    end
  end
  root to: 'pages#home'
  resources :bands
  get 'pages/show_dashboard', to: 'pages#show_dashboard', as: :dashboard
end
