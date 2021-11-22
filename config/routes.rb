Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # resources :menu_items, only: [:index]
  get "/menu", to: "menu_items#index"
  resources :orders, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
