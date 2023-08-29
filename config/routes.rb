Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  resources :boardgames, only: %i[index new create show]
  resources :players, only: %i[new create destroy]
  resources :users, only: %i[new create edit update destroy]
  resources :parties, only: %i[show edit update new create destroy]
  resources :game_to_users, only: %i[new create]
end

# resources :boardgames, only: %i[index]
# resources :players, only: %i[new create destroy]

# resources :users %i[new create edit update destroy] do
#   resources :game_to_users %i[new create destroy]
# end

# resources :boardgames, only: %i[show] do
#   resources :parties, only: %i[show edit update new create destroy]
# end
