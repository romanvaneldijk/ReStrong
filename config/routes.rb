Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "/menu", to: "items#index"

  resources :items, only: [ :new, :create, :destroy ]

  # get "/order", to: "orders#show"
  get "/order/checkout", to: "checkout#show"

  get "owner", to: "owners#show"
  get "owner/menu", to: "owners#menu"

  get "/tables/:table_id/dinners/new", to: "dinners#new", as: :new_dinner
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :orders, only: %i[create show update destroy] do
      get "/user_dashboard", to: "user_dashboards#show", as: :user_dashboard
  end
  resources :order_items, only: %i[create destroy create_menu]
  # resources :items
  resources :tables, only: [ :new, :create, :show ]
end
