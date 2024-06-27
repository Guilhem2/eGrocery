Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/show'
  get 'checkouts/new'
  get 'checkouts/create'
  get 'checkouts/show'
  get 'groceries/index'
  get 'groceries/show'
  get 'checkout/new'
  get 'checkout/create'
  get 'checkout/show'
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :checkouts, only: [:new, :create, :show] do
    resources :bookings, only: [:new, :create, :show]
  end
  resources :groceries, only: [:index, :show]
end
