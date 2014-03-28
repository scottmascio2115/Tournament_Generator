TournyMadness::Application.routes.draw do
  root "tournytime#home"
  devise_for :users
  get "ember/start"
  get 'auth_redirect', to: 'ember#auth_redirect'
  get 'tournymadness', to: 'ember#start'

  namespace :api do
    namespace :v1 do
      resources :users
      resources :posts
      resources :comments
      resources :players
      resources :tournaments
      resources :teams
      resources :games
      resources :sessions, only: [:create, :destroy]
    end
  end

end

