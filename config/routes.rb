Rails.application.routes.draw do
  devise_for :users
  root to: 'cities#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :cities, only: %i[new create] do
    resources :itineraries, only: %i[new create]
  end

  resources :itineraries, only: [] do
    resources :reviews, only: %i[new create]
  end
end
