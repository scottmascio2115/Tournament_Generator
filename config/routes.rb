TournyMadness::Application.routes.draw do
  devise_for :users
  get "ember/start"

  namespace :api do
    namespace :v1 do
      resources :users
      resources :players
      resources :tournaments
      resources :teams
      resources :games
    end
  end

  root "ember#start"
end

