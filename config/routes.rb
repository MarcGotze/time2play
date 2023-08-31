Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  root to: "pages#welcome"
  resources :boardgames, only: %i[index new create]
  resources :players, only: %i[destroy update]
  resources :users, only: %i[show new create edit update destroy]
  resources :parties, only: %i[show edit update destroy]
  resources :game_to_users, only: %i[destroy]

  resources :boardgames, only: :show do
    resources :game_to_users, only: %i[create]
    resources :players, only: :show
    resources :parties, only: %i[new create]
  end

  resources :parties, only: [] do
    resources :players, only: %i[new create]
  end
end

# resources :boardgames, only: %i[index]
# resources :players, only: %i[new create destroy]

# resources :users %i[new create edit update destroy] do
#   resources :game_to_users %i[new create destroy]
# end

# resources :boardgames, only: %i[show] do
#   resources :parties, only: %i[show edit update new create destroy]
# end
