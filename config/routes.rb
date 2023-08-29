Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :boardgames, only: %i[index new create show]
  resources :players, only: %i[new create destroy]
  # Defines the root path route ("/")
  # root "articles#index"

  resources :parties, only: %i[show edit update new create destroy]
end
