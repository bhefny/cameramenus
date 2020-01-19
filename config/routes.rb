Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
      resources :softwares
      resources :brands
      resources :variants
      resources :menus

      root to: "softwares#index"
    end
  root to: 'home#index'
  resources :brands, only: [:index, :show] do
  end
  resources :variants, only: [:index, :show] do
  end
  resources :firmware, only: [:index, :show] do
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
