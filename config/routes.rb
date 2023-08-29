Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  resources :boardgames, only: [:index, :new, :create, :show]
  resources :users, only: %i[new create edit update destroy]
  resources :parties, only: %i[show edit update new create destroy]

end
