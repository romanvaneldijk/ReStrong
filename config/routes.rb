Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # resources :menu_items, only: [:index]
  get "/menu", to: "items#index"
  get "/order", to: "orders#show"
  get "/order/checkout", to: "checkout#show"
  resources :orders, only: %i[create show update destroy]
  resources :order_items, only: %i[create destroy]
  # resources :items
  resources :tables, only: [ :new, :create, :show ]
end
